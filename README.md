# ansible

Configuring Managed Nodes
Python3 should already be installed
From the ansible control plane, execute:
   ssh-copy-id -i ~/.ssh/nopw (AnsibleUser)@(NodeToBeManaged)

Executing a Playbook
From the ansible control plane, execute:
   cd $PLAYBOOKDIR && ansible-playbook --become-password-file ~/.become_pass.txt site.yml
