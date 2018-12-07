# see https://qiita.com/mazgi/items/585348b6cdff3e320726
if test $# -ne 1
then
	echo "curl a url and get its status code"
	echo "Usage: bash <url>"
	exit 1
fi
url=$1

curl -LI "$url" -o /dev/null -w '%{http_code}\n' -s
