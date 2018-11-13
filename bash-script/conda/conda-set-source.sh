# see ~/.condarc to remove channels
set -e

if test "$1" = "6" 
then
	conda config --add channels https://mirrors6.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
	conda config --add channels https://mirrors6.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
elif test $# -eq 0 || test "$1" = "4" 
then
	conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
	conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
else 
	echo "Usage bash $0 <4|6>. <4,6> indicate TCP/IP version, default is Ipv4."
	exit 1
fi

conda config --set show_channel_urls yes
