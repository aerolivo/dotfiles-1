#!/usr/bin/env bash

fg_start="%{F#202124}"
fg_end="%{F-}"
bg_start="%{B#EF3895}"
bg_end="%{B-}"

function load() {
    local symbol=""
    echo -n "${bg_start}${fg_start}${symbol} $(cat /proc/loadavg | awk -F ' ' '{print $1,$2,$3}')${fg_end}${bg_end}"
}

load
