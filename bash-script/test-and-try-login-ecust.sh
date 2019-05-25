set +e
url=www.baidu.com
ping_url=114.114.114.114
ping -w 1 $ping_url > /dev/null || bash ~/connect.sh
# don't allow redirect, you'll get 302
http_code=`curl -LI "$url" -o /dev/null -w '%{http_code}\n' -s --connect-time 3 --max-redirs 0`
test $http_code -eq 200 || bash ~/connect.sh
