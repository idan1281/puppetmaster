sudo yum -y --exclude=centos-release*  update 
sudo yum -y install wget curl openssh-server

# Install root certificates
sudo yum -y install ca-certificates

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config

# Disabling ipv6
#echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
#echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf

# Restarting Network Service
sudo service network restart
