if test -z $1
then
	echo "Usage: bash $0 <env_name>"
	exit 1
fi

myenv=$1
conda env list | grep "$myenv" > /dev/null || {
	echo "no such env as $myenv!";
	exit 1;
}
set -e
source activate $myenv
python -m ipykernel --version > /dev/null|| conda install -y ipykernel
python -m ipykernel install --user --name $myenv --display-name "Python ($myenv)"

