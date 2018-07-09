set -e
set $proxy = "socks://localhost:1080"
git config --local http.proxy $proxy
git config --local https.proxy $proxy
