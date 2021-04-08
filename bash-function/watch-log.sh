function watch-log(){
    log_name=$1
	if test -z $log_name
	then
		echo "usage $0 <log file name>"
        return 1
	fi
    while true; do date +"%Yy_%mm_%dd_%Hh_%Mm" && tail $log_name ; sleep 5; done
}
export -f watch-log
