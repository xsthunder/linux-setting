# copy this to ~/.ssh
# put *.pub in ~/.ssh
# run with root user
set -e
apt install openssh-server -y
for i in ./*.pub
do
	cat $i >> authorized_keys
done
chmod 600 authorized_keys
chmod 700 ./
service start sshd
