# using socks localhost:1080
# set up http proxy on localhost:1081
BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source $BASH_DIR/template/add-node-to-path.sh
echo $PATH
hpts --version || npm i -g http-proxy-to-socks
hpts -p 1081
