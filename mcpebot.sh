#!/bin/bash

echo -e "\e[31mStarting\e[0m"
sudo apt update -y &>/dev/null
apt update -y &>/dev/null
echo "This takes 5 to 10 mins"
apt install sudo -y &>/dev/null
sudo apt install sudo -y &>/dev/null
apt install tsu -y &>/dev/null
sudo apt intsall tsu -y &>/dev/null
apt install curl -y &>/dev/null
sudo apt install curl -y &>/dev/null
printf "node index.js |nnode.js" > startbot
chmod +x startbot
read -p "IP: " IP
read -p "PORT: " PORT
read -p "BOT-GM: " NAME
read -p "VERSION: " VERSION
echo -e "\e[31mOFFLINE = 1\e[0m"
echo -e "\e[32mTRUE = 1\e[0m"
echo -e "\e[32mFALSE = 0 (default)\e[0m"
read -p "Enter a number: " OFFLINE
if [[ $USER_INPUT -eq 1 ]]; then
echo -e "\e[1;33m[50%]Installing nodejs\e[0m"
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash - &>/dev/null
sudo apt-get install -y nodejs &>/dev/null
curl -fsSL https://deb.nodesource.com/setup_17.x | bash - &>/dev/null
apt-get install -y nodejs &>/dev/null
echo -e "\e[1;33m[75%]Installing bedrock-protocol npm\e[0m"
npm install bedrock-protocol &>/dev/null
echo -e "\e[1;33m[95%]inserting code to index.js\e[0m"
printf "const bedrock = require('bedrock-protocol') \nconst client = bedrock.createClient({ \nhost: '$IP', \nport: $PORT, \nversion: '$VERSION', \nusername: '$NAME', \noffline: false \n}) \nconsole.log ('connected') \nconsole.log ('Hit Control C If you want to stop')" > index.js
fi
echo -e "\e[1;33m[50%]Installing nodejs\e[0m"
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash - &>/dev/null
sudo apt-get install -y nodejs &>/dev/null
curl -fsSL https://deb.nodesource.com/setup_17.x | bash - &>/dev/null
apt-get install -y nodejs &>/dev/null
echo -e "\e[1;33m[75%]Installing bedrock-protocol npm\e[0m"
npm install bedrock-protocol &>/dev/null
echo -e "\e[1;33m[95%]inserting code to index.js\e[0m"
printf "const bedrock = require('bedrock-protocol') \nconst client = bedrock.createClient({ \nhost: '$IP', \nport: $PORT, \nversion: '$VERSION', \nusername: '$NAME', \noffline: true \n}) \nconsole.log ('connected') \nconsole.log ('Hit Control C If you want to stop')" > index.js
sleep 1s
echo -e "\e[1;33m[97%]installation is done\e[0m"
echo -e "\e[1;33m[98%]inserting is done\e[0m"
echo -e "\e[1;33m[100%]all is done\e[0m"
echo "======================"
echo -e "\e[33mHit ctrl C if You want to Stop\e[0m"
echo -e "\e[33mTo start Again type> ./startbot\e[0m"
echo "======================"
node index.js
echo "To start Again type> ./startbot"







