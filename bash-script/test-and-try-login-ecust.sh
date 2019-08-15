# ~/connect.sh is needed, get the login code from network in firefox
set +e
url=www.baidu.com
ping_url=114.114.114.114

# case one no response at all
# use ip address to avoid the case when dns server is not available
ping -w 1 $ping_url > /dev/null || bash ~/connect.sh

# case two redirect to login page
# don't allow redirect, you'll get 302
http_code=`curl -LI "$url" -o /dev/null -w '%{http_code}\n' -s --connect-time 3 --max-redirs 0`
test $http_code -eq 200 || bash ~/connect.sh
