#!/bin/bash
# Simple helper script to grab the head of a repo for committing.

if [[ $1 ]]; then
	REPO=$1
else
	REPO="https://origsvn.digium.com/svn/dahdi/linux/trunk"
fi

if [[ $2 ]]; then
	LOCAL=$2
fi

REV=`svn info ${REPO} | grep Last\ Changed\ Rev: | cut -d : -f 2`

git svn clone -r ${REV} ${REPO} ${LOCAL}
