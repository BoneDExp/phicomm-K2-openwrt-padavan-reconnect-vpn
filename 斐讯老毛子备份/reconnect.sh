#!/bin/sh
# ����/etc/storage/scripts��
# crontab����� * * * * *  reconnect.sh
echo "��ʼ���"
ping -c 4 -W 10 1.1.1.1
	if [ "$?" != "0" ];then
		ps w | grep l2tpd | grep -v grep | awk '{print $1}' | xargs kill -9
		restart_wan
		echo "������"
		echo "ok">>/tmp/vpncon.log
	fi  
exit 0