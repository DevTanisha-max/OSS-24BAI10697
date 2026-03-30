#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE | grep "^ii"
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system built for collaboration" ;;
    apache2) echo "Apache: web server powering the internet" ;;
    mysql) echo "MySQL: database for modern apps" ;;
    vlc) echo "VLC: open-source media player" ;;
    firefox) echo "Firefox: browser supporting open web" ;;
    *) echo "Unknown package" ;;
esac
