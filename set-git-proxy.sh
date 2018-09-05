# use socks proxy hosted at localhost:1080
echo "Host github.com
Hostname github.com
User git
ProxyCommand socat - PROXY:127.0.0.1:\%h:\%p,proxyport=1080"\
>> ~/.ssh/config
which socat || { echo "socat not found!" ; exit 1; }
