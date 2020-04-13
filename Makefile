install-git-filters:
	git config filter.gpg.clean 'gpg --encrypt --recipient "$(git config --global --get user.signingkey)" --armor'
	git config filter.gpg.smudge 'gpg --decrypt 2>/dev/null'
