ansible:
	ansible-playbook -i inventory.yml -c local -K ./main.yml
.PHONY: ansible
