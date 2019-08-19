#!/usr/bin/env bash

fg_start="%{F#202124}"
fg_end="%{F-}"
bg_start="%{B#975CFF}"
bg_end="%{B-}"

function battery() {
    local percentage=$(cat /sys/class/power_supply/BAT0/capacity)
    local battery_status=$(cat /sys/class/power_supply/BAT0/status)
    case "${battery_status}" in
        "Charging")
            local symbol=" "
            ;;
        "Discharging")
            local symbol=""
            ;;
        "Full")
            local symbol=" "
            ;;
        "Unknown")
            local symbol="..."
            ;;
    esac
    echo -n "${bg_start}${fg_start}${symbol} ${percentage}%${fg_end}${bg_end}"
}

battery
