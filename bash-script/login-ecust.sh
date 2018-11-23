# require
# ecust_name
# ecust_password
# ecust_type -> free or others
# in  ~/.linux-settingrc

# set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source $DIR/template/add-node-to-path.sh

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
test -n "$ecust_username" && test -n "$ecust_password" || {
    echo "makesure ecust_username, ecust_password exits in $SRC_FILR"
    exit 1;
}
if test "$ecust_type" == 'free'
then
    username="${ecust_username}@free"
fi
curl login.ecust.edu.cn
for url in {172.20.3.81,172.20.3.90}
do
    for port in {801,802,803,804}
    do
        echo "trying $url:$port"
        curl -d "action=login&username=${username}&password={B}${password}&ac_id=18&user_ip=&nas_ip=&user_mac=&ajax=1" http://${url}:${port}/include/auth_action.php | grep 'login_ok' \
        && {
        echo "successfully login";
        exit 0;
        }
    done
done

echo "fail login"
exit 1
