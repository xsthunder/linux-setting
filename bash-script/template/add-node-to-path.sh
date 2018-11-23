NODE_DIR="~/installation/node/bin"
which node
node --version > /dev/null || {
    if test -d "$NODE_DIR"
    then
        PATH="${NODE_DIR}:$PATH"
    else
        echo "make sure $NODE_DIR exits"
        exit 1
    fi
    node --version > /dev/null || {
        echo "make sure node exits in $NODE_DIR"
        exit 1;
    }
}
# using source, don't exit, otherwise the parent script will exit
# exit 0;
