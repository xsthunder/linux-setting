if test $# -ne 1
then
	echo "Usage: bash <file or dir>"
	exit 1
fi
file=$1
# see https://unix.stackexchange.com/questions/46915/get-the-chmod-numerical-value-for-a-file
stat --format '%a' $file
