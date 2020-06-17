#!/bin/bash

# 设置远程仓库的地址
remote_url=git@gitee.com:uzt/uzt.git
# 获取当前时间
cur_date="`date +%Y-%m-%d-%H:%M:%S`" 
# 生成_book文件
gitbook build

rm -rf .deploy_git/* | egrep .deploy_git/.git
if [ ! -d ".deploy_git/" ];then
 cp -R _book/ .deploy_git/
else
 cp -R _book/* .deploy_git/
fi
cd .deploy_git/
git config --global user.email "jinzhentaohb@126.com"
git config --global user.name "jzt"
git init
git remote add origin $remote_url
git checkout -b master
git add -A
git commit -m $cur_date
git push -f origin master