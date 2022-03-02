THIS_FILE := $(lastword $(MAKEFILE_LIST))
deploy:
	ansible-playbook -i ./inventory.yml ./playbook.yml