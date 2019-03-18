if test $# -ne 1
then
	echo "Usage: bash <website/url>"
	exit 1
fi
wget -r -p -np -k $1
