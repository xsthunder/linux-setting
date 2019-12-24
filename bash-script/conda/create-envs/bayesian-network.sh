name=${BASH_SOURCE[0]}
# conda create -n $name python=3.6 xlrd matplotlib networkx -y
source activate $name
# pip install pgmpy
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch # see https://pytorch.org/get-started/locally/
