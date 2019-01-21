set -e

name=data-mining
conda create -n $name python=3.6
source activate $name
conda install pandas xlrd tqdm numpy ipykernel -y
conda install scikit-learn tensorflow keras -y
