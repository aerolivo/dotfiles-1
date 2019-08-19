#!/usr/bin/env bash

fg_start="%{F#202124}"
fg_end="%{F-}"
bg_start="%{B#00D7D7}"
bg_end="%{B-}"

function wireless() {
    local interface="wlp2s0"
    local symbol=""
    local ssid=$(iwconfig "${interface}" | grep "${interface}" | awk -F '"' '{print $2}')
    if [[ -z "${ssid}" ]]; then
        echo -n "${bg_start}${fg_start}${symbol} not connected${fg_end}${bg_end}"
    else
        echo -n "${bg_start}${fg_start}${symbol} ${ssid}${fg_end}${bg_end}"
    fi
}

wireless
