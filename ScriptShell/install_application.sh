#! /bin/bash

echo -e "\033[41;37m --> Updating Centos System \033[0m"
sudo yum -y update
echo -e "\033[41;37m --> Install Centos Utils  \033[0m"
sudo yum -y install yum-utils
echo -e "\033[41;37m --> Install Centos GroupInstall Development  \033[0m"
sudo yum -y install groupinstall development
echo -e "\033[41;37m --> Install Centos IUSCommunity RPM  \033[0m"
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
echo -e "\033[41;37m --> Install Python36u  \033[0m"
sudo yum -y install python36u
echo -e "\033[41;37m --> Install Python36u devel  \033[0m"
sudo yum -y install python36u-devel
echo -e "\033[41;37m --> Install Python36u-Pip  \033[0m"
sudo yum -y install python36u-pip
echo -e "\033[41;37m --> Install Bind-utils(include Nslookup Dig)  \033[0m"
sudo yum -y install bind-utils
echo -e "\033[41;37m --> Install Telnet Telnet-Server  \033[0m"
sudo yum -y install telnet telnet-server
echo -e "\033[41;37m --> Install Telnet atd  \033[0m"
sudo yum -y install at

