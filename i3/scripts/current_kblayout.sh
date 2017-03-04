#!/usr/bin/env bash
case "$(xset -q|grep LED| awk '{ print $10 }')" in
  "00000000") KBD="US" ;;
  "00001000") KBD="UA" ;;
  *) KBD="unknown" ;;
esac
echo "$KBD"
