Ansible playbooks
===

This repository contains the [ansible][ansible]
[playbooks][playbooks], [roles][roles] and [inventory
files][inventory] I use to manage my laptops, servers and raspberry
pis.

Some files are encrypted using [Ansible Vault][vault].

Usage
---

To use a playbook on a given inventory file, use the standard tool
[`ansible-playbook`][ansible-playbook]. For example, to run `site.yml`
on the inventory file `hosts` limited to the server `local`, I use:

    ansible-playbook --vault-id @prompt -K -i hosts -l local site.yml


[ansible]: http://docs.ansible.com/

[vault]: http://docs.ansible.com/ansible/latest/user_guide/vault.html

[roles]: http://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html

[inventory]: http://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html

[playbooks]: http://docs.ansible.com/ansible/latest/user_guide/playbooks.html

[ansible-playbook]: http://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html#executing-a-playbook
