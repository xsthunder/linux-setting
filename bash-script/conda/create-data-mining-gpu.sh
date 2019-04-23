set -e

name=data-mining-gpu
conda create -n $name python=3.6
source activate $name
conda install pandas xlrd tqdm numpy ipykernel -y
conda install tensorflow-gpu keras-gpu \
  scikit-learn \ # traditional machine learning
  pillow \ # image support such as keras.preprocessing.image
  matplotlib \ # draw graph or show image in jupyter
  -y
