from logging import getLogger, INFO
from pathlib import Path
from subprocess import run
from sys import stdin
from tempfile import NamedTemporaryFile

from coloredlogs import install as coloredlogs_install
from git import InvalidGitRepositoryError, Repo


_logger = getLogger(__name__)
coloredlogs_install(
    level=INFO, fmt="%(asctime)s %(name)s %(message)s", datefmt="%H:%M:%S",
)


def _get_password_path() -> str:
    try:
        repository = Repo(".", search_parent_directories=True)
    except InvalidGitRepositoryError:
        _logger.critical(
            "Could not find the path of the current git working directory. "
            "Are you in one?"
        )
        exit(1)
    return str(
        Path(repository.git.rev_parse("--show-toplevel")).resolve()
        / "vault-password.bash"
    )


_password_path = _get_password_path()


def encrypt() -> None:
    _logger.info("Encrypting a file using ansible-vault")
    data = stdin.read()
    with NamedTemporaryFile("w") as fh:
        fh.write(data)
        run(
            [
                "ansible-vault",
                "--vault-password-file",
                _password_path,
                "encrypt",
                fh.name,
                "--output",
                "-",
            ]
        )


def decrypt() -> None:
    _logger.info("Decrypting a file using ansible-vault")
    data = stdin.read()
    with NamedTemporaryFile("r+") as fh:
        fh.write(data)
        fh.seek(0)
        run(
            [
                "ansible-vault",
                "--vault-password-file",
                _password_path,
                "decrypt",
                fh.name,
                "--output",
                "-",
            ]
        )
