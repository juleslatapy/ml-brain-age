SCRIPTS_DIRECTORY = scripts

create_env:
	bash $(SCRIPTS_DIRECTORY)/create_env.sh

activate_env:
	bash $(SCRIPTS_DIRECTORY)/activate.sh

install:
	bash $(SCRIPTS_DIRECTORY)/install.sh ./requirements.txt

create_docker_env:
	docker build -t brain_age .

start_app:
	bash $(SCRIPTS_DIRECTORY)/start_app.sh
