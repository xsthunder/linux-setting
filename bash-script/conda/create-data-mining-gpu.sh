set -e

name=data-mining-gpu
conda create -n $name python=3.6
source activate $name
conda install pandas xlrd tqdm numpy ipykernel -y
conda install scikit-learn tensorflow-gpu keras-gpu -y

conda install pillow -y # image support such as keras.preprocessing.image
