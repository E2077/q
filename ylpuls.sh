#!/usr/bin/env bash
#

# 青龙一键安装脚本

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
npm install -g tough-cookie
cd /ql
npm install -g jsdom
cd /ql
npm install -g cjs
cd /ql
npm install -g download
cd /ql
npm install -g tunnel
cd /ql
npm install -g moment
cd /ql
npm install -g ws
cd /ql
npm install -g canvas
cd /ql
npm install -g form-data
cd /ql
npm install -g ts-node
cd /ql
npm install -g ds
cd /ql
pip3 install yargs
cd /ql
pip3 install json5
cd /ql
pip3 install iconv-lite
cd /ql
pip3 install requests
cd /ql
pip3 install js-base64
cd /ql
pip3 install pycryptodome
cd /ql
pip3 install gevent
cd /ql
apk add --no-cache libssl-dev build-essential libffi-dev libsas12-dev
cd /ql
add apk gcc --no-cache python3-dev libc-dev Cryptodome
cd /ql
echo
echo
TIME g "依赖安装完毕..."
echo
exit 0
