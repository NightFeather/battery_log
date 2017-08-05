#!/bin/bash

[[ -a /etc/default/battery_log ]] && source /etc/default/battery_log

DATABASE_DIR=${DATABASE_DIR:-/var/lib}/battery_log

[[ -d ${DATABASE_DIR} ]] || mkdir $DATABASE_DIR

charge_now=$(cat /sys/class/power_supply/BAT1/charge_now)
charge_full=$(cat /sys/class/power_supply/BAT1/charge_full)

echo $(date "+%s") $charge_now $charge_full >> ${DATABASE_DIR}/history

