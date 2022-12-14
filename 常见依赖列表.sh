#!/usr/bin/envbash
查看已安装NPM依赖
docker exec -it qinglong bash -c "npm ls -g --depth0"
pip查看已安装模块
docker exec -it qinglong bash -c "pip list"
apk查看已安装模块
docker exec -it qinglong bash -c "apk info "
------------常用node依赖------------
canvas
png-js
date-fns
axios
crypto-js
ts-md5
tslib
@types/node
dotenv
got
md5
requests
typescript
fs
require
jsdom
download
js-base64
tough-cookie
tunnel
ws
form-data
crypto
npm
yargs
iconv-lite
ts-node
moment
------------不常用node依赖------------
qrcode-terminal
prettytable
json5
global-agent
js-yaml
qs
psl
--------------------------------------------------------------------------
------------常用Python3依赖------------
pip
requests
jieba
setuptools
PyExecJS
------------不常用Python3依赖------------
cryptography
dateparser
feedparser
peewee
pyaes
pyppeteer
rsa
schedule
tomli
--------------------------------------------------------------------------
------------常用Linux依赖------------
libffi-dev
no-cache
python3
python3-dev
zlib-dev
gcc
jpeg-dev
musl-dev
freetype-dev
build-base
g++
cairo-dev
pango-dev
giflib-dev
------------不常用Linux依赖------------
bash
curl
git
jq
make
openssl-dev
perl
perl-app-cpanminus
perl-dev
py3-pip
wget
linux-headers