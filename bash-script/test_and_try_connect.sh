url=baidu.com
# don't allow redirect, you'll get 302
http_code=`curl -LI "$url" -o /dev/null -w '%{http_code}\n' -s --connect-time 3 --max-redirs 0`
test $http_code -eq 302 && bash ./connect.sh
