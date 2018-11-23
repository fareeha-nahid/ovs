#!/bin/bash

while true
do
	var_localcommit=$(git rev-parse HEAD 2>&1)
	var_remotecommit=$(git rev-parse origin/master 2>&1)

	if [ var_localcommit != var_remotecommit ]
	then 
		echo "Files have been changed since last commit"
		git pull 
		git push -u origin master
	
	fi
	sleep 3m
done
