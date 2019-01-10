name=clean-data
conda create -n $name
source activate $name
conda install pandas tqdm numpy ipykernel
conda install python-dateutil XlsxWriter xlrd pyodbc
