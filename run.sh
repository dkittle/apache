#!/bin/sh

# ansible-playbook -i inventory/qa.hosts playbooks/server.yml --vault-password-file ~/.vault-pass

ansible-playbook server.yml --vault-password-file ~/.vault-pass
