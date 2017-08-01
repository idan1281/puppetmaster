echo "Removing requiretty"
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
echo "Complete!"
