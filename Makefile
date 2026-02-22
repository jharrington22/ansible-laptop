ansible:

ifndef ANSIBLE_TAGS
	ansible-playbook -i inventory.yml -c local -K ./main.yml
else
	ansible-playbook -i inventory.yml -c local -K ./main.yml --tags $(ANSIBLE_TAGS) -vv
endif
# else
# 	ifndef ANSIBLE_TAGS
# 		ansible-playbook -vvv -i inventory.yml -c local -K ./main.yml
# 	else
# 		ansible-playbook -i inventory.yml -c local -K ./main.yml --tags $(ANSIBLE_TAGS)
# 	endif
# endif

.PHONY: ansible

install-ansible:
	hack/install_ansible.sh
.PHONE: install-ansible
