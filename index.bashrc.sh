function sa(){
	if test -z "$1"
	then
		source activate my-jupyter
	else 
		source activate "$1"
	fi

}
