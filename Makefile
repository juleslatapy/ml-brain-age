SCRIPTS_DIRECTORY = scripts

create_env:
	bash $(SCRIPTS_DIRECTORY)/create_env.sh

activate_env:
	bash $(SCRIPTS_DIRECTORY)/activate.sh

install_dependancies:
	bash $(SCRIPTS_DIRECTORY)/install.sh ./requirements.txt

create_docker_env:
	docker build -t brain_age .
