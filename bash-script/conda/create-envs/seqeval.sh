# for https://github.com/jadore801120/attention-is-all-you-need-pytorch
set -e
name=seqeval
conda create -n $name python=3.6 -y
source activate $name
conda install numpy pandas -y
pip install seqeval
