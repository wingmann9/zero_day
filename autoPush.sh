#!/bin/bash

CUR_DIR=$(pwd)
PROJECT_DIR="${CUR_DIR}"

for fileToCommit in $(find ${PROJECT_DIR}/* -type f);
do
	test -f "$fileToCommit" || continue
	printf "%s\n" "${fileToCommit}"

	git add "${fileToCommit}"
	git commit -a -m "[ADD] New ${fileToCommit##*/} File"
	git push
done
