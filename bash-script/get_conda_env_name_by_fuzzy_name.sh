fuzzy_name=$1
conda env list | grep $fuzzy_name | awk '{print $1}'
