#!/usr/bin/env bash
brightness=`xbacklight -get`
echo ${brightness%%.*}
