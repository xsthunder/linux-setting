set -e

name=clean-data
conda create -n $name
source activate $name
conda install -y pandas tqdm numpy ipykernel
conda install -y python-dateutil XlsxWriter xlrd pyodbc
