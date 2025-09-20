ansible:
ifndef VERBOSE
	ansible-playbook -i inventory.yml -c local -K ./main.yml
else
	ansible-playbook -vvv -i inventory.yml -c local -K ./main.yml
endif

.PHONY: ansible
