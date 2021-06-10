#!/bin/bash
#
index=1
for TASK in $(rabbitmqctl list_queues -q name messages -p pharmanow_vhost)
do
	if [ $((a%2)) -ne 0 ]
	then
		echo $TASK
	fi
	
done
