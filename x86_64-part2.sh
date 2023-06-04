#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/files/bin/config_generate

# ==========luci-app-==========
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# ==========luci-theme-==========
cd feeds/luci/themes/
rm -rf luci-theme-argon/
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git

# ==========openclash===========
cd ../../../package/
mkdir openclash
cd openclash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull --depth 1 origin master
git branch --set-upstream-to=origin/master master
