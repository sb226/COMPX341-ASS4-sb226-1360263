#!/bin/bash
if [ $(python3 CommentCheck.py) != 0 ]; then 
	echo 'There are some error!'
	exit 2
fi
echo 'There are nothing wrong!'
# 2 lines below can be comment out after first time run 
#npm install @testing-library/react react-test-renderer jest-dom --save-dev
#npm install 
#npm run build
cd src 
cd __tests__
CI=true npm run test
if [ $? != 0 ]; then
	echo 'There are fail test'
	exit 2	
fi
echo 'All test are pass'
cd ../../../
git add assets/src/
git add assets/pipeline.sh
git commit -m $1
git push origin master
