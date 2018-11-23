NODE_DIR="~/installation/node/bin"
node --version > /dev/null 2>/dev/null || {
    PATH="${NODE_DIR}:$PATH"
    node --version > /dev/null || {
        echo "make sure node exits in $NODE_DIR"
        exit 1;
    }
}
# using source, don't exit, otherwise the parent script will exit
# exit 0;
