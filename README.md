# ansible

## Configuring Managed Nodes

1. Python3 is likely already installed on the managed node(s). If not, install it.

2. Copy the public key specified in the ansible.cfg to the managed node. From the ansible controller, execute:

`ssh-copy-id -i ~/.ssh/nopw (AnsibleUser)@(NodeToBeManaged)`

## Executing the Playbook

From the ansible control plane, execute:

`cd $PLAYBOOKDIR && ansible-playbook --become-password-file ~/.become_pass.txt site.yml --diff --check`

This will perform a dry run. Remove the "--check" option to do the actual installation.

## Executing the playbook directly on the target host

Install git and ansible on the target host
Install Ansible dependencies if needed
`ansible-galaxy install geerlingguy.docker`
Install AUR ansible dependency if using and Arch-based distro
`ansible-galaxy collection install kewlfft.aur`
Retrieve vault password
`scp lance@taichi:/home/lance/.vault_pass.txt ~/`
Retrieve the playbook and execute a dry run
`ansible-pull --ask-become-pass --vault-password-file ~/.vault_pass.txt --url http://github.com/WittFan0/ansible.git --inventory $HOSTNAME --diff --check`
If the dry-run executes successfully, run the command again without the " --diff --check" options to execute the playbook.