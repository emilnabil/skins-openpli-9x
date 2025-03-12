#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/emilnabil/skins-openpli-9x/refs/heads/main/skin-Youchie-PLI-FHD.sh -O - | /bin/sh
##
###########################################
###########################################

# My config script #
PLUGIN_TAR="skin-Youchie-PLI-FHD.tar.gz"
MY_URL="https://raw.githubusercontent.com/emilnabil/skins-openpli-9x/refs/heads/main"

######################################################################################
MY_EM='============================================================================================================'

# Remove Old Plugin
echo "   >>>>   Removing old version..."
rm -rf /usr/share/enigma2/Youchie-PLI-FHD

echo "============================================================================================================================"
echo " DOWNLOAD AND INSTALL PLUGIN "
echo "   Installing plugin, please wait..."

cd /tmp || exit 1
set -e

wget "$MY_URL/$PLUGIN_TAR"
sleep 1
tar xzvpf "/tmp/$PLUGIN_TAR" -C /
rm -rf "/tmp/$PLUGIN_TAR"

echo "================================="
set +e

if [ $? -eq 0 ]; then
    echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi

echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL " 
sleep 4                        
echo "$MY_EM"
echo "**********************************************************************************"

exit 0
















