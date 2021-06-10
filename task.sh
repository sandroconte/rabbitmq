#!/bin/bash
#
i=1
for TASK in $(rabbitmqctl list_queues -q name messages -p pharmanow_vhost)
do
	if [ $((i%2)) -ne 0 ]
	then
		echo "$(rabbitmqadmin get queue=$TASK -u pharmanow -p Ph4rm4-rabbitmq -V pharmanow_vhost)\n"
	fi
	i=$((i+1))
done
