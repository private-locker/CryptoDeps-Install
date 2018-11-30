#!/usr/bin/env bash
echo -e "[!] Launching APT UPDATE/UPGRADE..";
sudo apt-get update -y
sudo apt-get upgrade -y
echo -e "[!] Installing Git.. (via APT)";
sudo apt-get install git -y
echo -e "[!] Installing Dependencies.. (via APT)";
sudo apt-get install build-essential libssl-dev libboost-all-dev libqrencode-dev pkg-config libminiupnpc-dev qt5-default qttools5-dev-tools libgmp3-dev -y && 
echo -e "[!] Adding Bitcoin Repo to APT..";
sudo add-apt-repository ppa:bitcoin/bitcoin -y
echo -e "[!] Updating APT..";
sudo apt-get update -y
echo -e "[!] Installing 2nd Set of Dependencies.. (via APT)";
sudo apt-get install libdb4.8-dev libdb4.8++-dev autoconf build-essential libtool autotools-dev pkg-config libssl-dev libboost-all-dev autoconf automake libzmq3-dev libminiupnpc-dev libssl-dev libevent-dev libgmp-dev openssl -y
echo -e "[!] Updating APT..";
sudo apt-get update -y
echo -e "[!] Double checking build dependencies.. (via APT)"; 
sudo apt-get install git build-essential -y
echo -e "[!] Installing Aptitude.. (via APT)";
sudo apt-get install aptitude -y
echo -e "[!] Installing 3rd Set of Dependencies.. (via APTITUDE)";
sudo aptitude install libdb4.8++-dev -y 
echo -e "[!] Installing Software Dependencies.. (via APT)";
sudo apt-get install software-properties-common python-software-properties -y
echo -e "[!] Adding Git-Core Repo to APT..";
sudo add-apt-repository ppa:git-core/ppa
echo -e "[!] Updating APT.. ";
sudo apt-get update -y
echo -e "[!} Cleaning Up..";
rm -rf "$0";
echo -e "[!] DONE!";
exit
