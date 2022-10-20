#! /bin/bash

dir=$PWD

# 复制目录到 ~/.aria2
mkdir -r ~/.aria2
cp -r ./* ~/.aria2
cd ~/.aria2

# 变更conf中的配置路径
sed -i "s|HOME|${HOME}|g" aria2.conf

# 更新bt tracker
bash tracker.sh

cd $dir

echo success!!
