BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null && pwd  )"

# -o仅输出匹配的字符串，用于正则抽取，抽取名字
dirname=`echo $BASH_DIR | egrep -o "[^/]+$"`
