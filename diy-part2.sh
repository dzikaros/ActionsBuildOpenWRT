#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# ==========openclash===========
# cd package
# git clone --depth=1 --filter=blob:none --sparse https://github.com/vernesong/OpenClash.git
# cd OpenClash
# git sparse-checkout set luci-app-openclash
