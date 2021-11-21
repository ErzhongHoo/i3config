#!/bin/bash

# 找到触摸板对应的id并赋予变量为id
id1=$(xinput list | grep 'ELAN2204:00 04F3:309A Touchpad' | awk '{print substr($6,4,5)}')
id2=$(xinput list | grep 'ETPS/2 Elantech Touchpad' | awk '{print substr($6,4,5)}')

# 触控板对应的id,tap对应的数字
tap1=$(xinput list-props $id1 | grep "libinput Tapping Enabled (" | awk '{print substr($4,2,3)}')
tap2=$(xinput list-props $id2 | grep "libinput Tapping Enabled (" | awk '{print substr($4,2,3)}')

xinput set-prop $id1 $tap1 1
xinput set-prop $id2 $tap2 1

##############################################################

# 触控板对应的id,speed对应的数字

speed1=$(xinput list-props $id1 | grep "libinput Accel Speed (" | awk '{print substr($4,2,3)}')
speed2=$(xinput list-props $id2 | grep "libinput Accel Speed (" | awk '{print substr($4,2,3)}')

xinput set-prop $id1 $speed1 0.6
xinput set-prop $id2 $speed2 0.6
