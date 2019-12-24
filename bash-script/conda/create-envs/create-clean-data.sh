set -e

name=clean-data
conda create -n $name
source activate $name
conda install pandas xlrd tqdm numpy ipykernel -y
conda install python-dateutil XlsxWriter pyodbc -y

# following for network support
conda install requests -y
conda install -c anaconda beautifulsoup4 -y
