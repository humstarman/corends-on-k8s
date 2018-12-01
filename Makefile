SHELL=/bin/bash
MANIFEST=./manifest

all: deploy

deploy: export OP=create
deploy: cp sed
	@kubectl ${OP} -f ${MANIFEST}/.

clean: export OP=delete
clean:
	@kubectl ${OP} -f ${MANIFEST}/.
