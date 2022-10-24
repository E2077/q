#!/usr/bin/env bash
#

# 青龙一键安装脚本
# GitHub仓库： https://github.com/FlechazoPh/QLDependency
TIME() {
[[ -z "$1" ]] && {
	echo -ne " "
} || {
     case $1 in
	r) export Color="\e[31;1m";;
	g) export Color="\e[32;1m";;
	b) export Color="\e[34;1m";;
	y) export Color="\e[33;1m";;
	z) export Color="\e[35;1m";;
	l) export Color="\e[36;1m";;
      esac
	[[ $# -lt 2 ]] && echo -e "\e[36m\e[0m ${1}" || {
		echo -e "\e[36m\e[0m ${Color}${2}\e[0m"
	 }
      }
}
echo
echo
echo
TIME l "安装依赖..."
echo
TIME y "安装依赖需要时间，请耐心等待!"
echo
sleep 3
echo
echo
npm config set registry https://registry.npm.taobao.org
cd /ql
npm install -g canvas
cd /ql
npm install -g png-js
cd /ql
npm install -g date-fns
cd /ql
npm install -g axios
cd /ql
npm install -g crypto-js
cd /ql
npm install -g ts-md5
cd /ql
npm install -g tslib
cd /ql
npm install -g @types/node
cd /ql
npm install -g dotenv
cd /ql
npm install -g got
cd /ql
npm install -g md5
cd /ql
npm install -g requests
cd /ql
npm install -g typescript
cd /ql
npm install -g fs
cd /ql
npm install -g require
cd /ql
npm install -g jsdom
cd /ql
npm install -g download
cd /ql
npm install -g js-base64
cd /ql
npm install -g tough-cookie
cd /ql
npm install -g tunnel
cd /ql
npm install -g ws
cd /ql
npm install -g form-data
cd /ql
npm install -g crypto
cd /ql
npm install -g yargs
cd /ql
npm install -g iconv-lite
cd /ql
npm install -g ts-node
cd /ql
npm install -g moment
cd /ql
pip3 install jieba
cd /ql
pip3 install PyExecJS
cd /ql
cd /ql/scripts/ && apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev
cd /ql
apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev
cd /ql
echo
TIME g "依赖安装完毕..."
echo
exit 0