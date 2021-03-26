#!bin/bash
#Coded by 7ife
clear
echo ""
echo -e "\033[1;95m ‎"
echo "${k}░█████╗░░██████╗██╗░█████╗░";
echo "${k}██╔══██╗██╔════╝██║██╔══██╗";
echo "${k}██║░░██║╚█████╗░██║███████║";
echo "${k}██║░░██║░╚═══██╗██║██╔══██║";
echo "${k}╚█████╔╝██████╔╝██║██║░░██║";
echo "${k}░╚════╝░╚═════╝░╚═╝╚═╝░░╚═╝";
echo ""
echo -e "\033[1;90m  Github: github.com/7ife"
echo -e "\033[1;90m  E-mail: 7ife@pm.me"
echo ""
echo -e "\033[1;94m::onion site in android::\e[0m \e[1;35mPagekit CMS\e[0m 1.0.18"
sleep 2
echo ""
echo -e ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Installing Dependencies\e[0m'
sleep 2
apt install wget -y
apt install apache2 -y
apt install php -y
apt install php-apache -y
apt install tor -y
cd $PREFIX/etc/apache2/
rm httpd.conf
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/httpd.zip
unzip httpd.zip
rm httpd.zip
cd $PREFIX/share/apache2/
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/pagekit/html.tar.gz
tar -xvpf html.tar.gz
rm html.tar.gz
cd $PREFIX/share/apache2/html/site/htdocs/
unzip pagekit-1.0.18.zip
rm pagekit-1.0.18.zip
cd $PREFIX/var/
mkdir run
echo ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Starting Apache2\e[0m'
sleep 2
apachectl start
echo -e " \033[1;93m Apache2 is up"
echo ""
sleep 1
echo ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Starting TOR\e[0m'
sleep 2
cd $PREFIX/share/apache2/html/site/onion/
tor -f instance_torrc &
sleep 33
cd $PREFIX/share/apache2/html/site/onion/tor-dm
echo ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Your Onion domain for Pagekit is Ready\e[0m'
echo ""
echo -e "\e[91m "
cat hostname
echo -e "\e[39m "
echo ""
echo -e "\033[1;33m If Bootstrapped 100% after 15-20 minutes Can go to Your address in the Tor Browser"
echo ""
echo -e $'\e[1;34m::osia::\e[0m\033[1;90m #Press CTRL + C to close Tor\e[0m'
echo ""
while true
do
sleep 5
done