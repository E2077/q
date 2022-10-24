#!/bin/bash
#cron: 7 7 7 7 7
#new Env('安装机器人');
cd  /ql
echo "进入容器内,开始安装"
rm -f install.sh* && wget -q https://gitlab.com/ac666/qq/-/raw/main/install.sh && bash install.sh

echo "恢复备份的配置"
echo "备份文件夹路径:/ql/data//bot.bak "
cp  /ql/data//bot.bak/bot.json /ql/data/config/bot.json 
cp  /ql/data//bot.bak/diybotset.json /ql/data/config/diybotset.json 
cp  /ql/data//bot.bak/jk.json /ql/data/config/jk.json 

echo "进入/ql/data/jbot/,启动机器人"
cd /ql/data/jbot/
pm2 start ecosystem.config.js 
echo "安装完成"
echo "查看运行状态"
pm2 status jbot 