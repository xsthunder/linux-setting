if test -z $1
then
	echo "Usage: bash $0 <remote_url>"
	exit 1
fi
git log || {
	echo "commit first!";
	exit 1;
}
git remote add origin "$1"
git push --set-upstream origin master
