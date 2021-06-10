#!/bin/bash
#

for TASK in $(rabbitmqctl list_queues -q name messages -p pharmanow_vhost)
do
	echo $TASK
done
