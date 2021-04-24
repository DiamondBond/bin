long=$(timedatectl status | grep Local)
short="${long:30:35}"
evenshorter="${short:0:20}"
echo $evenshorter

#timedatectl set-ntp false
#sudo timedatectl set-time $evenshorter
sudo timedatectl set-ntp true
