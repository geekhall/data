#########################################################
# filename : commit.sh
# author   : geekhall
# version  : v1.0.0
# function : 1. Get current date and time.
#            2. commit and push to github and gitee. 
#########################################################
usage()
{
	echo "Usage:"
	echo "commit.sh"
	echo " or"
	echo "commit.sh CommentContent"
	exit 2
}

if [ $# -eq 1 ]; then
	comment=$1
else
	comment=`date +'%Y%m%d-%H%M%S'`
fi

###############
# copy file
###############
	
git add .
git commit -m "$comment"
git push 
echo "commit ok"

#/usr/local/bin/python3 /Users/yiny/bin/deploy.py

