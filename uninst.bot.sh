#!/usr/bin/env sh
#cron: 7 7 7 7 7
#new Env('卸载机器人');
echo "进入容器内,开始卸载"
pm2 stop jbot && pm2 delete jbot
echo "删除/ql/jbot/ 残留"
rm -rf /ql/jbot/*
echo "删除/ql/data/jbot/ 残留"
rm -rf /ql/data/jbot/*
echo "卸载完成"
echo "查看运行状态"
pm2 status jbot 