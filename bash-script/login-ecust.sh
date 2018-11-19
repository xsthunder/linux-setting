set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

SRC_FILE=~/.linux-settingrc
test -f $SRC_FILE || {
    echo "$SRC_FILE doesn't exist"
    exit 1;
}
ch_val=`bash $DIR/get-chmod-numerical-value.sh $SRC_FILE`
test $ch_val -eq 600 || {
    echo "$SRC_FILE chmod numerical value must be 600"
    exit 1;
}
source $SRC_FILE


username="${ecust_username}"
password=`node ${DIR}/login-ecust.js <<< ${ecust_password}`
if test type == 'free'
then
    username="${ecust_username}@free"
fi
curl -d "action=login&username=${username}&password={B}${password}&ac_id=18&user_ip=&nas_ip=&user_mac=&ajax=1" http://172.20.13.100:802/include/auth_action.php
