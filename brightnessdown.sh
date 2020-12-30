#!/bin/bash

var1=-30 #正数为调高亮度，负数为调低亮度
var1=$(($var1 + $(cat /sys/class/backlight/amdgpu_bl0/brightness)))
echo $var1 > /sys/class/backlight/amdgpu_bl0/brightness
