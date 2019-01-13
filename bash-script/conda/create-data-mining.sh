set -e

name=data-mining
conda create -n $name python=3.6
source activate $name
conda install pandas xlrd tqdm numpy ipykernel -y
conda install scikit-learn tensorflow=1.7.0 keras=2.2.4 -y
