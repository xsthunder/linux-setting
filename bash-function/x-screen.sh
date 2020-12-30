function x-screen-kill(){
	screen_name=$1
	if test -z $screen_name
	then
		echo "usage x-screen-kill screen_name"
        return 1
	fi
    screen -X -S $screen_name quit
}

function x-screen-r(){
	screen_name=$1
	if test -z $screen_name
	then
		echo "usage x-screen-r screen_name"
		echo ""
        return 1
	fi
    screen -R $screen_name
}

export -f x-screen-kill
export -f x-screen-r
