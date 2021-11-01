#!/bin/bash

# 找到触摸板对应的id并赋予变量为id
#id=$(xinput list | grep 'ELAN2204:00 04F3:309A Touchpad' | awk '{print substr($6,4,5)}')
id=$(xinput list | grep 'ETPS/2 Elantech Touchpad' | awk '{print substr($6,4,5)}')

# 触控板对应的id,tap对应的数字
tap=$(xinput list-props $id | grep "libinput Tapping Enabled (" | awk '{print substr($4,2,3)}')

xinput set-prop $id $tap 1

##############################################################

# 触控板对应的id,speed对应的数字

speed=$(xinput list-props $id | grep "libinput Accel Speed (" | awk '{print substr($4,2,3)}')

xinput set-prop $id $speed 0.6
