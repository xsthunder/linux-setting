set -e

name=lattice-lstm-pytorch-0.3
conda create -n $name python=2.7 -y
source activate $name
conda install pytorch=0.3.0 cudatoolkit=8.0 -y
conda install pandas xlrd tqdm ipykernel -y
conda install matplotlib -y

# have problems, use another envs in python3
# pip install --no-deps seqeval[gpu] -y
