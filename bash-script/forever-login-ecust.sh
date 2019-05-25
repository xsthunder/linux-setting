BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $BASH_DIR
while true ; do bash test-and-try-login-ecust.sh;sleep 1; done 

