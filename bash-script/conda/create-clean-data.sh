name=clean-data
conda create -n $name
source activate $name
conda install pandas tqdm python-dateutil XlsxWriter xlrd
