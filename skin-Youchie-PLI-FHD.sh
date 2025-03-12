#!/bin/bash
########
## Command=wget https://raw.githubusercontent.com/emilnabil/skins-openpli-9x/refs/heads/main/skin-Youchie-PLI-FHD.sh -O - | /bin/sh
##
echo "Removing previous version of Youchie-FHD..."
sleep 2

# Check if the directory exists before removing it
if [ -d /usr/share/enigma2/Youchie-PLI-FHD ]; then
    rm -rf /usr/share/enigma2/Youchie-PLI-FHD
    rm -rf /usr/lib/enigma2/python/Plugins/Extensions/YouchieSettings > /dev/null 2>&1
    
    echo 'Package removed.'
else
    echo "You do not have previous version"
fi

echo ""
opkg install enigma2-plugin-extensions-bitrate enigma2-plugin-extensions-oaweather
opkg install curl
sleep 2

# Download and extract the package
cd /tmp || exit
curl -k -Lbk -m 55532 -m 555104 "https://github.com/emilnabil/skins-openpli-9x/raw/refs/heads/main/skin-Youchie-PLI-FHD.tar.gz" -o /tmp/skin-Youchie-PLI-FHD.tar.gz
sleep 1
echo "Installing ...."
tar -xzf /tmp/skin-Youchie-PLI-FHD.tar.gz -C /
echo ""
echo ""
sleep 1
rm -f /tmp/skin-Youchie-PLI-FHD.tar.gz

exit 







