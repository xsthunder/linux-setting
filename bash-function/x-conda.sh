function x-conda-grep(){
	env_name=$1
	if test -z $env_name
	then
		echo "usage $0 <fuzzy conda env name>"
	fi
	echo $(conda env list | grep $env_name | awk '{print $1}')
}
function x-conda-act(){
	env_name=$1
	if test -z $env_name
	then
		echo "usage $0 <fuzzy conda env name>"
	fi
	source activate $(x-conda-grep $env_name)
}
export -f x-conda-grep
export -f x-conda-act
alias gpu='bash ~/linux-setting/bash-script/gpu-usage.sh'
