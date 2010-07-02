#!/bin/bash
USERNAME=`whoami`
HOSTNAME=`hostname -f`
REPO_NAME=${1}

if [ -d /home/${USERNAME}/public_git/${REPO_NAME} ]; then
	echo "${REPO_NAME} already exists"
	exit 1
fi

mkdir /home/${USERNAME}/public_git/${REPO_NAME}
cd /home/${USERNAME}/public_git/${REPO_NAME}
/home/${USERNAME}/bin/git init --bare
touch git-daemon-export-ok
echo "read-only: http://${HOSTNAME}/~${USERNAME}/${REPO_NAME}" > cloneurl
echo "read-write: ${USERNAME}@${HOSTNAME}:public_git/${REPO_NAME}" >> cloneurl
