# [Install — HanLP documentation](https://hanlp.hankcs.com/docs/install.html#install-native-package)
# [Tutorial — HanLP documentation](https://hanlp.hankcs.com/docs/tutorial.html)
set -e
set -x
# conda create --name hanlp python=3.6 -y
source activate hanlp

conda install pytorch torchvision cudatoolkit=10.1 -c pytorch -y # see https://pytorch.org/get-started/locally/
conda install pandas xlrd tqdm numpy ipykernel -y

# check repo
pip config list

yes | pip install hanlp
