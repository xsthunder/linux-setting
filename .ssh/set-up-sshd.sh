set -e
apt install openssh-server -y
service start sshd
for i in ./*.pub
do
	cat $i >> authorized_keys
done
chmod 600 authorized_keys
chmod 700 ./
service restart sshd
