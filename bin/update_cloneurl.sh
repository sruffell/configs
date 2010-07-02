#!/bin/bash
USERNAME=`whoami`
HOSTNAME=`hostname -f`
REPO_NAME=${1}

for dir in `ls /home/${USERNAME}/public_git/`; do
	echo "read-only: git://${HOSTNAME}/~${USERNAME}/${dir}" > /home/${USERNAME}/public_git/${dir}/cloneurl
	echo "read-write: ${USERNAME}@${HOSTNAME}:public_git/${dir}" >> /home/${USERNAME}/public_git/${dir}/cloneurl
done
