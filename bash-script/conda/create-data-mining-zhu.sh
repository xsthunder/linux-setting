set -e

name=data-mining-zhu
conda create -n $name python=3.6
source activate $name

conda install -y pandas tqdm numpy ipykernel xlrd

conda install -y numpy pandas scipy scikit-learn lightgbm
conda install -c anaconda py-xgboost=0.60 -y
conda install -c conda-forge imbalanced-learn -y
