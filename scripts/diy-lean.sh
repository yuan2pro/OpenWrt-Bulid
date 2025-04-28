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

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf
# 修改x86编译内核版本为5.15
# sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
# 使用firewall4
sed -i 's/+firewall/+uci-firewall/g' feeds/luci/applications/luci-app-firewall/Makefile

# Define the configuration file
CONFIG_FILE="feeds.conf.default"

# Comment out the second line that contains the original luci source
sed -i 's|^\(src-git luci https://github.com/coolsnowwolf/luci\)|#\1|' $CONFIG_FILE

# Uncomment the third line if it starts with #src-git luci and has the specified URL
sed -i 's|^#\(src-git luci https://github.com/coolsnowwolf/luci.git;openwrt-23.05\)|\1|' $CONFIG_FILE

sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}