sudo yum update
sudo rpm -i http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-redhat93-9.3-1.noarch.rpm
sudo yum -y install postgresql93-server postgresql93-contrib
sudo service postgresql-9.3 initdb
sudo chkconfig postgresql-9.3 on
sudo service postgresql-9.3 status
sudo service postgresql-9.3 start
sudo chkconfig iptables off

