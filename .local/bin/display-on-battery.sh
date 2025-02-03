#!/bin/bash

HYPRLAND_INSTANCE_SIGNATURE=`ls /run/user/1000/hypr` su ry -c "/usr/bin/hyprctl keyword monitor ,2880x1920@60, 0x0, 1.2"
HYPRLAND_INSTANCE_SIGNATURE=`ls /run/user/1000/hypr` su ry -c "/usr/bin/hyprctl keyword hyprctl keyword decoration:blur:enabled false"
HYPRLAND_INSTANCE_SIGNATURE=`ls /run/user/1000/hypr` su ry -c "/usr/bin/hyprctl keyword hyprctl keyword misc:vfr true"
