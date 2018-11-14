if test -z $1
then
	echo "Usage: bash $0 <env_name>"
	exit 1
fi

myenv=$1
source activate $myenv
jupyter kernelspec uninstall $myenv

