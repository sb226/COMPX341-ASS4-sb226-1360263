#!/bin/bash
if [ $(python3 CommentCheck.py) != 0 ]; then 
	echo 'There are some error!'
	exit 2
fi
echo 'There are nothing wrong!'
npm install 
npm run build
#push and commit

