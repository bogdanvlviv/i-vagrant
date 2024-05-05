sudo sed -i "/Port /c\Port 4242" /etc/ssh/sshd_config

sudo sed -i "/PasswordAuthentication /c\PasswordAuthentication no" /etc/ssh/sshd_config

sudo sed -i "/GatewayPorts /c\GatewayPorts clientspecified" /etc/ssh/sshd_config

sudo /etc/init.d/ssh restart
