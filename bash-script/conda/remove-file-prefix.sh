for i in $(ls ./)
do
cmd="mv $i ${i#git-}"
echo "mv $i ${i#git-}"
$cmd
done
