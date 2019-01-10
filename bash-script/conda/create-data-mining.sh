name=data-mining
conda create -n $name
source activate $name
conda install pandas tqdm numpy
conda install scikit-learn tensorflow=1.7.0 keras=2.2.4
