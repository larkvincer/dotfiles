#!/usr/bin/env bash
brightness=`light`
echo ${brightness%%.*}
