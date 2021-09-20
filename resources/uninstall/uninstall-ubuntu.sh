#!/bin/bash

uninstall1 () {
if [ -d "ubuntu-binds, ubuntu-fs" ] || [ -f "startubuntu.sh" ];then
echo "Uninstallation begins..."
rm -rf ubuntu-fs ubuntu-binds startubuntu.sh
echo "Uninstalled Ubuntu!"
exit 0
fi
if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
echo "It seems like you don't have Ubuntu installed."
echo "Please re-run the script to install Ubuntu."
exit 0
fi
}

read -p "Are you sure you want to uninstall Ubuntu? [Y/n] " uninstall

if [ "$uninstall" = "y" ];then
uninstall1
elif [ "$uninstall" = "Y" ];then
uninstall1
else
echo "Uninstallation aborted."
exit
fi
else
echo "Uninstallation aborted."
fi
