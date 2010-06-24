#!/bin/bash
if [[ $1 ]]; then
	git diff $1..HEAD | /home/sruffell/linux-2.6/scripts/checkpatch.pl --no-tree --no-signoff -
else
	git diff HEAD^ -- . | /home/sruffell/linux-2.6/scripts/checkpatch.pl --no-tree --no-signoff -
fi
