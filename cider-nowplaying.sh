#!/bin/bash
data=$(playerctl --all-players metadata --format '{{artist}} - {{title}}')
if [[ -z "$data" || "$data" == " - " ]]; then
    echo "󰎇 Keine Wiedergabe"
else
    echo "󰎇 $data"
fi
