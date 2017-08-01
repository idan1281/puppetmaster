# install official epel package
# @see https://fedoraproject.org/wiki/EPEL
sudo rpm --import https://fedoraproject.org/static/0608B895.txt
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
# yum install epel-release
#sudo yum --releasever=6.7 -y update --skip-broken
sudo yum -y --exclude=centos-release* update --skip-broken
