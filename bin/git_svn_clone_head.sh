#!/bin/bash
# Simple helper script to grab the head of a repo for committing.

NAME=$USER


if [[ $1 ]]; then
	REPO=$1
else
	REPO="https://origsvn.digium.com/svn/dahdi/linux/trunk"
	MY_WORKING_REPO=/home/${NAME}/dahdi-linux
fi

if [[ $2 ]]; then
	LOCAL=$2
else
	LOCAL=trunk
fi

REV=`svn info ${REPO} | grep Last\ Changed\ Rev: | cut -d : -f 2`

git svn clone -r ${REV} ${REPO} ${LOCAL}
cd ${LOCAL}
if [[ ${MY_WORKING_REPO} ]]; then
	git remote add origin ${MY_WORKING_REPO}
	git fetch origin
	git show origin/externals:get | bash
fi
