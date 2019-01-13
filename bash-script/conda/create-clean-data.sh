set -e

name=clean-data
conda create -n $name
source activate $name
conda install pandas xlrd tqdm numpy ipykernel -y
conda install python-dateutil XlsxWriter pyodbc -y
