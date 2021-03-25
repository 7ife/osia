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
echo -e "\033[1;94m::onion site in android::\e[0m \e[1;34mWonderCMS\e[0m 3.1.4"
sleep 2
echo ""
echo -e ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Installing Dependencies\e[0m'
sleep 2
apt install wget -y
apt install nginx -y
apt install php-fpm -y
apt install tor -y
cd $PREFIX/etc/nginx/
rm nginx.conf
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/wonder/conf.zip
unzip conf.zip
rm conf.zip
cd $PREFIX/share/nginx/
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/wonder/html.tar.gz
tar -xvpf html.tar.gz
rm html.tar.gz
cd $PREFIX/share/nginx/html
cd $PREFIX/var/
mkdir run
echo ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Starting Nginx & php-fpm\e[0m'
sleep 2
nginx
php-fpm
echo -e " \033[1;93m Nginx & php-fpm is up"
echo ""
sleep 1
echo ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Starting TOR\e[0m'
sleep 2
cd $PREFIX/share/nginx/html/onion/
tor -f instance_torrc &
sleep 33
cd $PREFIX/share/nginx/html/onion/tor-dm
echo ""
echo -e $'\e[1;34m::osia::\e[0m\e[1;32m #Your Onion domain for WonderCMS is Ready\e[0m'
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