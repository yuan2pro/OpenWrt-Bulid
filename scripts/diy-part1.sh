#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default
# echo 'src-git yw0822 https://github.com/yw0822/openwrt-packages' >>feeds.conf.default
echo 'src-git linkease https://github.com/linkease/istore.git' >>feeds.conf.default

# git clone https://github.com/kenzok8/small-package package/small-package
# git clone https://github.com/kiddin9/openwrt-packages package/openwrt-package
#git clone https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx

# themes添加（svn co 命令意思：指定版本如https://github）
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
#git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial

#git clone https://github.com/shidahuilang/openwrt-package package/openwrt-packages
#git clone https://github.com/shidahuilang/helloworld package/helloworld
#git clone https://github.com/shidahuilang/openwrt-passwall package/openwrt-passwall

#git clone https://github.com/liuran001/openwrt-packages package/openwrt-packages
#git clone https://github.com/kenzok8/small-package package/small-package
#git clone https://github.com/kenzok8/openwrt-packages package/openwrt-packages
#git clone https://github.com/kenzok8/small package/small
#git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall

##添加额外软件包
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
#git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot
#git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
##添加smartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
#git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter

# 甜糖
#git clone https://github.com/jerrykuku/luci-app-ttnode.git package/luci-app-ttnode

#sirpdboy
##git clone https://github.com/sirpdboy/sirpdboy-package.git package/sirpdboy-package
#git clone https://github.com/sirpdboy/luci-app-advanced.git package/luci-app-advanced
#git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
#git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
#git clone https://github.com/sirpdboy/luci-app-poweroffdevice.git package/luci-app-poweroffdevice
#git clone https://github.com/sirpdboy/luci-app-autotimeset.git package/luci-app-autotimeset
