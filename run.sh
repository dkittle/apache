#!/bin/sh

# ansible-playbook -i inventory/qa.hosts playbooks/server.yml --vault-password-file ~/.vault-pass

ansible-playbook -i hosts server.yml --vault-password-file ~/.vault-pass
