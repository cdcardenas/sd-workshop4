
yum install -y wget unzip screen 
wget https://releases.hashicorp.com/consul/1.0.0/consul_1.0.0_linux_amd64.zip -P /tmp
unzip /tmp/consul_1.0.0_linux_amd64.zip -d /tmp
mv /tmp/consul /usr/bin
mkdir /etc/consul.d
mkdir -p /etc/consul/data

adduser consul
passwd password
chown -R consul:consul /etc/consul
chown -R consul:consul /etc/consul.d

#firewall-cmd --zone=public --add-port=8301/tcp --permanent
#firewall-cmd --zone=public --add-port=8300/tcp --permanent
#firewall-cmd --zone=public --add-port=8500/tcp --permanent
#firewall-cmd --reload

#su consul
#consul agent -server -bootstrap-expect=1 \
#-data-dir=/etc/consul/data -node=agent-server -bind=192.168.33.12 \
#-enable-script-checks=true -config-dir=/etc/consul.d -client 0.0.0.0



