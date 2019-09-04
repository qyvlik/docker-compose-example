#!/bin/sh

$INFLUX_CMD "CREATE RETENTION POLICY \"rp_default\" ON \"$INFLUXDB_DB\" DURATION 15d REPLICATION 1 DEFAULT"

# https://blog.51cto.com/nginxs/2322359
# create readonly
# create user monitor_ro with password 'zabbix_apipwd'
# grant read on $INFLUXDB_DB to monitor_ro
