#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/files/bin/config_generate

# ==========openclash===========
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
