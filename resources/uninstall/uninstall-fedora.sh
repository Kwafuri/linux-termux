#!/bin/bash

uninstall1 () {
if [ -d "fedora-binds, fedora-fs" ] || [ -f "startfedora.sh" ];then
echo "Uninstallation begins..."
rm -rf fedora-fs fedora-binds startfedora.sh
echo "Uninstalled Fedora!"
exit 0
fi
if [ ! -d "ubuntu-binds, ubuntu-fs" ] || [ ! -f "startubuntu.sh" ];then
echo "It seems like you don't have Fedora installed."
echo "Please re-run the script to install Fedora."
exit 0
fi
}

read -p "Are you sure you want to uninstall Fedora? [Y/n] " uninstall

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
