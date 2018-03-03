#!/bin/sh
BAT_PATH=/sys/class/power_supply/bq27441
CHARGE_FULL=$(cat $BAT_PATH/charge_full)
CHARGE_NOW=$(cat $BAT_PATH/charge_now)
CHARGE=$(echo "$CHARGE_NOW $CHARGE_FULL / 100 * p" | dc)
printf "Charge is at %.3g%%\n" $CHARGE
