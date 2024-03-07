#!/bin/bash
sudo apt-get install curl -y
sudo apt-get install wget -y
if ! [ -d requisitos ]
	then
		mkdir requisitos
fi

if ! [ -d requisitos/resultados ]
	then
		mkdir requisitos/resultados
fi

if ! [ -d requisitos/osgint ]
	then
		cd requisitos
		sudo https://github.com/thezxid404/guacarilu.git && cd osgint && pip3 install -r requirements.txt
		cd ..
		cd ..
fi

clear
	echo
		
				echo "                               ︻デ═一  Created by: ZAIDHENSEM  ︻デ═一 " 
				echo "          ---------------------------------------------------------------------------------------------"
				echo "                 Any action or activity related to AKU YANG HENSEM OR HMC is solely your responsibility"
				echo "          ---------------------------------------------------------------------------------------------"
				echo
				echo
				echo "                                     ==============================="
				echo "                                     [1]         Instragram 🕵️""      |"
				echo "                                     [2]           TikTok 🕵️""        |"
				echo "                                     [3]           Twitter 🕵️""       |"
				echo "                                     [4]           Twitch 🕵️""        |"
				echo "                                     [5]          Telegram 🕵️""       |"
				echo "                                     [6]           GitHub 🕵️""        |"
				echo "                                     [99]   ------> Exit ""<------   |"
				echo "                                     ==============================="
				echo
				echo
				read -p "[*] Choose an option: " opc2
					case $opc2 in
							1 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: @$username"
								echo "#################################"
								echo
								wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.picnob.com/profile/$username/ -O requisitos/resultados/Ig-$username.txt >/dev/null
								sleep 6
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"fullname">/ {print $2}' | cut -c 12- | rev | cut -c6- | rev`
								echo "[*] Description: " `cat requisitos/resultados/Ig-$username.txt | awk '/div class="sum"/ {print}' | cut -c 18- | rev | cut -c7- | rev | awk 'NR==1{print}'`
								echo "[*] Posts: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
								echo "[*] Followers: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
								echo "[*] Following: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
								echo "[*] Account Status(Empty = Public): " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
								echo
								echo "[*] URL Profile: https://www.instagram.com/$username"
								;;
							2 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s https://urlebird.com/es/user/$username/ > requisitos/resultados/TikTok-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
								echo "[*] Description: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
								echo "[*] Followers: " `cat requisitos/resultados/TikTok-$username.txt | awk '/Followers/ {print $5}'`
								echo "[*] Following: " `cat requisitos/resultados/TikTok-$username.txt | awk '/Following/ {print $6}'`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://www.tiktok.com/@$username"
								;;
							3 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								wget --wait=40 --limit-rate=40K -U Mozilla -bq https://nitter.net/$username -O requisitos/resultados/Twitter-$username.txt >/dev/null
								sleep 6
								echo "[*] User + Name: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:title/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
								echo "[*] Description: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:description/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
								echo "[*] Se unio en: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-joindate/ {print $3}' | cut -c 2- | rev | cut -c13- | rev`
								echo "[*] Tweets: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==1{print}'`
								echo "[*] Following: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==2{print}'`
								echo "[*] Followers: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==3{print}'`
								echo "[*] Likes: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==4{print}'`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
								echo
								echo "[*] URL Profile: https://nitter.net/$username"
								;;
							4 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s cli.fyi/https://www.twitch.tv/$username > requisitos/resultados/Twitch-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Twitch-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
								echo "[*] Description: " `cat requisitos/resultados/Twitch-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://www.twitch.tv/$username"
								;;
							5 )	echo
							read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s cli.fyi/https://t.me/$username > requisitos/resultados/Tg-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Tg-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
								echo "[*] Description: " `cat requisitos/resultados/Tg-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://t.me/$username"
								;;
							6 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s cli.fyi/https://github.com/$username > requisitos/resultados/Git-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
								echo "[*] Description: " `cat requisitos/resultados/Git-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Git-$username.txt | awk '/url/&&/avatars/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://github.com/$username"
								echo
								sleep 2
								sudo python3 requisitos/osgint/osgint.py -u $username
								;;
							99 ) exit
								;;
							* )	echo
								echo "$RRPLY Not a valid option"
								bash GUACARILU.sh