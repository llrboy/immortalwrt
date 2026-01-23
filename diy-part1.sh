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

cd /workdir/openwrt

# 更新并安装所有 feeds
./scripts/feeds update -a
./scripts/feeds install -a

# 安装缺失的依赖包
./scripts/feeds install radicale
./scripts/feeds install python-setuptools
./scripts/feeds install python-zope-event
./scripts/feeds install python-zope-interface

# 清理旧的编译缓存
make clean
make defconfig

# 重新开始编译
make -j$(nproc)
