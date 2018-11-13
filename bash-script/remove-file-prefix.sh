if test $# -ne 2
then
	echo "Usage: bash $0 <prefix> <dir>"
	exit 1
fi
prefix=$1
set -e
for i in $(ls $dir)
do
if test $i = $0
then
	 continue
fi
	cmd="mv $i ${i#$prefix}"
	echo "mv $i ${i#$prefix}"
	$cmd
done
