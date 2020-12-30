#! /usr/bin/zsh

id=$(xinput list | grep 'ELAN2204:00 04F3:309A Touchpad' | awk     '{print substr($6,4,5)}')

tap=$(xinput list-props $id | grep "Device Enabled" | awk '{print substr($3,2,3)}')

xinput set-prop $id $tap 0

