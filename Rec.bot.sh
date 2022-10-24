#!/usr/bin/env sh
#cron: 7 7 7 7 7
#new Env('恢复机器人配置');
echo "/ql/data//bot 备份文件夹所在路径"
if [ ! -d "/ql/data//bot.bak" ];then
mkdir "/ql/data//bot.bak"
echo "未找到文件夹,请先备份"
else
echo "找到备份文件夹,开始恢复"
fi
cp  /ql/data//bot.bak/bot.json /ql/data/config/bot.json 
cp  /ql/data//bot.bak/diybotset.json /ql/data/config/diybotset.json 
cp  /ql/data//bot.bak/jk.json /ql/data/config/jk.json 
echo "恢复完成"
