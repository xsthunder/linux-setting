# for https://github.com/jadore801120/attention-is-all-you-need-pytorch
set -e
name=pytorch-allen.py
# conda create -n $name python=3.6 -y
source activate $name
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch -y # see https://pytorch.org/get-started/locally/
conda install pandas xlrd tqdm numpy ipykernel -y
yes | pip install allennlp
