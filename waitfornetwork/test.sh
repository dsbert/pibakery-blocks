#!/bin/bash
VAL=1
if [ $1 = "yes" ]; then
VAL=0
fi
echo '$1'
echo "raspi-config nonint do_boot_wait $VAL"