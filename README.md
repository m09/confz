# Ansible playbooks

This repository contains the [ansible][ansible]
[playbooks][playbooks], [roles][roles] and [inventory
files][inventory] I use to manage my laptops, servers and raspberry
pis.

Files with extension `.vault` are encrypted when indexed by git and decrypted when checked out, using [Ansible Vault][vault] in a [git clean/smudge filter][git-filter].

## Usage

To use a playbook on a given inventory file, use the standard tool
[`ansible-playbook`][ansible-playbook]. For example, to run `site.yml`
on the inventory file `hosts` limited to the server `local`, I use:

    ansible-playbook -K -i hosts -l local site.yml

[ansible]: http://docs.ansible.com/
[vault]: http://docs.ansible.com/ansible/latest/user_guide/vault.html
[git-filter]: https://git-scm.com/book/en/v2/ch00/filters_a
[roles]: http://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html
[inventory]: http://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html
[playbooks]: http://docs.ansible.com/ansible/latest/user_guide/playbooks.html
[ansible-playbook]: http://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html#executing-a-playbook
