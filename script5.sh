#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer 3 questions"

read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe open source is about $FREEDOM." > $OUTPUT
echo "Tools like $TOOL show the power of collaboration." >> $OUTPUT
echo "I want to build $BUILD and share it freely." >> $OUTPUT

echo "Saved in $OUTPUT"
cat $OUTPUT
