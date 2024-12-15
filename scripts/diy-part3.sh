#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)


# https://github.com/kenzok8/small
sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' "feeds.conf.default"
sed -i '$a src-git third_party https://github.com/linkease/istore-packages' feeds.conf.default
sed -i '$a src-git diskman https://github.com/jjm2473/luci-app-diskman.git' feeds.conf.default
sed -i '$a src-git oaf https://github.com/jjm2473/OpenAppFilter.git' feeds.conf.default
sed -i '$a src-git linkease_nas https://github.com/linkease/nas-packages.git' feeds.conf.default
sed -i '$a src-git linkease_nas_luci https://github.com/linkease/nas-packages-luci' feeds.conf.default
sed -i '$a src-git jjm2473_apps https://github.com/jjm2473/openwrt-apps.git' feeds.conf.default
./scripts/feeds update -a && rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang
find feeds/small -mindepth 1 -type d -print0 | while IFS= read -r -d $'\0' dir; do
  base=$(basename "$dir")
  if [ -d "feeds/helloworld/$base" ]; then
    echo "Removing: $dir"  # 先打印要删除的目录，方便检查
    rm -rf "$dir"
  fi
done
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
./scripts/feeds install -a 