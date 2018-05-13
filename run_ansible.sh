#!/bin/sh

docker run --rm -it \
-v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
-v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub \
--entrypoint ansible \
-v $(pwd):/ansible/playbooks \
mc75/ansible "$@"  -vvv
