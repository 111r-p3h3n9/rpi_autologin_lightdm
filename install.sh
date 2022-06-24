echo "********************** Performing update ************************"
apt-get update

echo "********************* Installing lightdm *****************"
apt-get install lightdm
dpkg-reconfigure lightdm

echo "**********************Enabling autologin***************"
rm /etc/lightdm/lightdm.conf
rm /etc/pam.d/lightdm-autologin
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin

echo "by p3h3n9"