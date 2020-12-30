function x-conda-grep(){
	env_name=$1
	if test -z $env_name
	then
		echo "usage x-conda-grep <fuzzy conda env name>"
        return 1
	fi
	echo $(conda env list | grep $env_name | awk '{print $1}')
}
function x-conda-act(){
	env_name=$1
	if test -z $env_name
	then
		echo "usage x-conda-act <fuzzy conda env name>"
        return 1
	fi
    fuz_name=$(x-conda-grep $env_name)

	if test -z $fuz_name
    then
        echo "$env_name not found, env list:"
        conda env list
        return 1
    fi

	source activate $fuz_name
}
export -f x-conda-grep
export -f x-conda-act
alias gpu='bash ~/linux-setting/bash-script/gpu-usage.sh'
