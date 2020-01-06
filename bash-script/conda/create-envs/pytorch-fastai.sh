# for https://github.com/jadore801120/attention-is-all-you-need-pytorch
set -e
name=pytorch-fastai
conda create -n $name python=3.6 -y
source activate $name
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch -y # see https://pytorch.org/get-started/locally/
conda install -c pytorch -c fastai fastai -y
conda install pandas xlrd tqdm numpy ipykernel scikit-learn -y
