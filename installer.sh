#!/bin/bash
echo "installing ""whois"" package"
sudo apt-get install whois -y

read -p "what is your username: " user 

#alias does not allow params by default. let's create a function for it
echo "whois-refined() {
whois "cannotpassdollaronelel" | grep -E 'city|address'
}" > ~/.bashrc
sed -i 's/cannotpassdollaronelel/$1/' /home/$user/.bashrc

source /home/$user/.bashrc
