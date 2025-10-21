#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 下载插件
svn co https://github.com/aige168/luci-app-accesscontrol feeds/luci/applications/luci-app-accesscontrol

git clone https://github.com/DongyangHu/luci-app-poweroff.git feeds/luci/applications/luci-app-poweroff

git clone https://github.com/nhhqgirl/luci-app-onliner.git feeds/luci/applications/luci-app-onliner

