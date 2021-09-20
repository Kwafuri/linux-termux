#!/bin/bash

ubuntu () {
echo "Choose which Ubuntu version you want to install."
echo "1. Ubuntu 12.04"
echo "2. Ubuntu 14.04"
echo "3. Ubuntu 16.04"
echo "4. Ubuntu 18.04"
echo "5. Ubuntu 20.04"
echo "6. Ubuntu 20.10"
echo "7. Ubuntu 21.04"
echo "8. Cancelling Ubuntu installation"
read -p "Please enter a number: " choice2
if [ $choice2 == "1" ]
    then
    if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
    echo "It seems like you've installed Ubuntu."
    echo "Please run ./startubuntu.sh to start it or re-run this script and choose 2 to uninstall."
    exit 0
fi
    if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
    echo "Starting Ubuntu 12.04 installation..."
    echo "Installing proot and wget first, just in case it's not installed..."
    apt-get install proot wget -y
    echo "Installing Ubuntu 12.04..."
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/ubuntu/ubuntu-12.04/ubuntu.sh)
fi
fi
if [ $choice2 == "2" ]
    then
    if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
    echo "It seems like you've installed Ubuntu."
    echo "Please run ./startubuntu.sh to start it or re-run this script and choose 2 to uninstall."
    exit 0
fi
    if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
    echo "Starting Ubuntu 14.04 installation..."
    echo "Installing proot and wget first, just in case it's not installed..."
    apt-get install proot wget -y
    echo "Installing Ubuntu 14.04..."
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/ubuntu/ubuntu-14.04/ubuntu.sh)
fi
fi
if [ $choice2 == "3" ]
    then
    if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
    echo "It seems like you've installed Ubuntu."
    echo "Please run ./startubuntu.sh to start it or re-run this script and choose 2 to uninstall."
    exit 0
fi
    if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
    echo "Starting Ubuntu 16.04 installation..."
    echo "Installing proot and wget first, just in case it's not installed..."
    apt-get install proot wget -y
    echo "Installing Ubuntu 16.04..."
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/ubuntu/ubuntu-16.04/ubuntu.sh)
fi
fi
if [ $choice2 == "4" ]
    then
    if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
    echo "It seems like you've installed Ubuntu."
    echo "Please run ./startubuntu.sh to start it or re-run this script and choose 2 to uninstall."
    exit 0
fi
    if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
    echo "Starting Ubuntu 18.04 installation..."
    echo "Installing proot and wget first, just in case it's not installed..."
    apt-get install proot wget -y
    echo "Installing Ubuntu 18.04..."
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/ubuntu/ubuntu-18.04/ubuntu.sh)
fi
fi
if [ $choice2 == "5" ]
    then
    if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
    echo "It seems like you've installed Ubuntu."
    echo "Please run ./startubuntu.sh to start it or re-run this script and choose 2 to uninstall."
    exit 0
fi
    if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
    echo "Starting Ubuntu 20.04 installation..."
    echo "Installing proof and wget first, just in case it's not installed..."
    apt-get install proot wget -y
    echo "Installing Ubuntu 20.04..."
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/ubuntu/ubuntu-20.04/ubuntu.sh)
fi
fi
if [ $choice2 == "6" ]
    then
    if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
    echo "It seems like you've installed Ubuntu."
    echo "Please run ./startubuntu.sh to start it or re-run this script and choose 2 to uninstall."
    exit 0
fi
    if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
    echo "Starting Ubuntu 20.10 installation..."
    echo "Installing proot and wget first, just in case it's not installed..."
    apt-get install proot wget -y
    echo "Installing Ubuntu 20.10..."
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/ubuntu/ubuntu-20.10/ubuntu.sh)
fi
fi

if [ $choice2 == "7" ]
    then
    if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
    echo "It seems like you've installed Ubuntu."
    echo "Please run ./startubuntu.sh to start it or re-run this script and choose 2 to uninstall."
    exit 0
fi
    if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
    echo "Starting Ubuntu 21.04 installation..."
    echo "Installing proot and wget first, just in case it's not installed..."
    apt-get install proot wget -y
    echo "Installing Ubuntu 21.04..."
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/ubuntu/ubuntu-21.04/ubuntu.sh)
fi
fi
if [ $choice2 == "8" ]
    then
    echo "Cancelling Ubuntu installation..."
    exit 0
fi
}

uninstall () {
echo "Choose which distro you want to uninstall."
echo "1. Ubuntu"
echo "2. Cancel uninstall"
read -p "Please enter a number: " choice4
if [ $choice4 == "1" ]
    then
    echo "Beginning uninstalling Ubuntu"
    bash <(curl -sSL https://raw.githubusercontent.com/Kwafuri/linux-termux/main/resources/uninstall/uninstall-ubuntu.sh)
fi
if [ $choice4 == "2" ]
    then
    echo "Cancelling uninstallation"
    exit 0
fi
}

echo "Please choose which Linux distro you want to install."
echo "Or choose 2 to uninstall distros"
echo "1. Ubuntu"
echo "2. Uninstall distros"
read -p "Please enter a number: " choice
if [ "$choice" = "1" ];then
ubuntu
fi
if [ "$choice" = "2" ];then
uninstall
fi
