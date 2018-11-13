if test $# -ne 2
then
	echo "Usage: bash $0 <prefix> <dir>"
	exit 1
fi
dir=$2
prefix=$1
for i in $(ls $dir)
do
	cmd="mv $dir/$i $dir/${i#$prefix}"
	echo "$cmd"
	$cmd
done
