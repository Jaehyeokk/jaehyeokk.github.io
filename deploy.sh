#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to https://<USERNAME>.github.io
git clone -b master https://github.com/jaehyeokk/jaehyeokk.github.io.git

# .git의 내용을 복사한 후 clone은 삭제한다.
cp -rf jaehyeokk.github.io/.git ./.git
rm -rf jaehyeokk.github.io

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git add .
git commit -m '$1'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
git push origin master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -