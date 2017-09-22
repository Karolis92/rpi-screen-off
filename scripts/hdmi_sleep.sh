#!/bin/sh

turn_off() {
    #echo turn off
    vcgencmd display_power 0 >/dev/null
}

turn_on() {
    #echo turn on
    vcgencmd display_power 1 >/dev/null
}

xscreensaver-command -watch | while read a; do
    # if kodi is not running
    if [ -z "$(pgrep kodi)" ]; then
        echo "$a" | grep -q '^BLANK' && turn_off
        echo "$a" | grep -q '^UNBLANK' && turn_on
    fi
done
