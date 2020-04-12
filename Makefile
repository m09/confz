install-git-filters:
	git config filter.vault.clean ansible-vault-filter-encrypt
	git config filter.vault.smudge ansible-vault-filter-decrypt