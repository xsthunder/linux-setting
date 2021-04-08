set -e

name=bert4keras
conda create -n $name python=3.6 -y
source activate $name
conda install pandas xlrd tqdm numpy ipykernel -y
conda install tensorflow-gpu=1.15.0 keras=2.3.1 scikit-learn pillow matplotlib nltk -y

pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
yes | pip install bert4keras==0.9.9 rouge tqdm
