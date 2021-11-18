#!/bin/sh
BASEDIR=$(dirname "$0")
$BASEDIR/display-switch.sh off
bluetoothctl disconnect
