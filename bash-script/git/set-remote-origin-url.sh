if test -z $1
then
	echo "Usage: bash $0 <remote_url>"
	exit 1
fi

git remote set-url origin "$1"
