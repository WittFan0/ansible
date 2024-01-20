# ansible

## Configuring Managed Nodes

1. Python3 is likely already installed on the managed node(s). If not, install it.

2. Copy the public key specified in the ansible.cfg to the managed node. From the ansible controller, execute:

`ssh-copy-id -i ~/.ssh/nopw (AnsibleUser)@(NodeToBeManaged)`

## Executing the Playbook

From the ansible control plane, execute:

`cd $PLAYBOOKDIR && ansible-playbook --become-password-file ~/.become_pass.txt site.yml`
