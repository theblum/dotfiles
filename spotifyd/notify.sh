#!/usr/bin/env bash

case "$PLAYER_EVENT" in
    start | play | change | stop | pause)
        notify-send --urgency=low --app-name=spotifyd spotifyd "$(spt playback --status)"
    ;;
esac
