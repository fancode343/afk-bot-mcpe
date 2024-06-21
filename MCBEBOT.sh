#!/bin/bash
echo "#######################################################################################"
echo "#"
echo "#                                   Minecraft Bedrock Bot SCRIPT"
echo "#"
echo "#                                     By: GranGuorgeMC - Script"
echo "#                                         PrismarineJS - JS CODE"
echo "#"
echo "#######################################################################################"
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
sudo apt-get install -y build-essential g++ cmake -y &>/dev/null
printf "node index.js \nnode.js" > startbot
chmod +x startbot
echo "ENTER Your IP (EX. ggmc.yourdomain.com)"
read -p "IP: " IP
echo "ENTER Your PORT (EX. 19132)"
read -p "PORT: " PORT
echo "ENTER Bot Gamertag (EX. Bot23)"
read -p "BOT-GM: " NAME
echo "ENTER Server Version (EX. 1.21.0)"
read -p "VERSION: " VERSION
echo -e "\e[32mFALSE[0] = YOU WILL ASK TO SIGN IN XBOX(default)\e[0m"
echo -e "\e[32mTRUE[1] = JOIN WITHOUT SIGNIN TO XBOX\e[0m"
read -p "Enter Input (0-1): " OFFLINE
echo -e "\e[1;33m[50%]Installing nodejs\e[0m"
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &>/dev/null
sudo apt-get install -y nodejs &>/dev/null
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - &>/dev/null
apt-get install -y nodejs &>/dev/null
echo -e "\e[1;33m[75%]Installing bedrock-protocol npm\e[0m"
npm install bedrock-protocol &>/dev/null
echo -e "\e[1;33m[95%]inserting code to index.js\e[0m"
case $OFFLINE in

    0)
    printf "const bedrock = require('bedrock-protocol') \nconst client = bedrock.createClient({ \nhost: '$IP', \nport: $PORT, \nversion: '$VERSION', \nusername: '$NAME', \noffline: false \n}) \nconsole.log ('connected') \nconsole.log ('Hit Control C If you want to stop')" > index.js
    sleep 1s;;
    1)
    printf "const bedrock = require('bedrock-protocol') \nconst client = bedrock.createClient({ \nhost: '$IP', \nport: $PORT, \nversion: '$VERSION', \nusername: '$NAME', \noffline: true \n}) \nconsole.log ('connected') \nconsole.log ('Hit Control C If you want to stop')" > index.js
    sleep 1s;;
    esac
echo -e "\e[1;33m[97%]Installation is done\e[0m"
echo -e "\e[1;33m[98%]Inserting is done\e[0m"
echo -e "\e[1;33m[100%]All is done\e[0m"
echo "======================"
echo -e "\e[33mHit ctrl C if You want to Stop\e[0m"
echo -e "\e[33mTo start Again type> ./startbot\e[0m"
echo "======================"
echo -e "\e[1;32m$NAME Joining to $IP Version $VERSION\e[0m"
output=$(node index.js 2>&1)
fi
