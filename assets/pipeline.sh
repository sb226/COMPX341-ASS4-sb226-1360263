#!/bin/bash
if [ $(python3 CommentCheck.py) != 0 ]; then 
	echo 'There are some error!'
	exit 2
fi
echo 'There are nothing wrong!'
#npm install 
#npm run build
cd src 
cd __tests__
ls
npm run test
cd ../../../
git add assets/src/
git add assets/pipeline.sh
git commit -m $1
git push origin master
