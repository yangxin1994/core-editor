### 
# @Description: 
 # @Author: liuqiyu
 # @Date: 2019-11-28 15:43:12
 # @LastEditors  : liuqiyu
 # @LastEditTime : 2020-01-08 09:42:54
 ###
#!/usr/bin/env bash
# 确保脚本抛出遇到的错误
set -e


rm -rf dist

# 生成静态文件
npm run build

# 进入生成的文件夹
cd dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -am 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/liuqiyu/core-editor.git master:gh-pages

cd -
