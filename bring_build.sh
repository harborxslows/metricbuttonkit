#!/usr/bin/env bash
set -e
REPO="harborxslows/metricbuttonkit"
LIB="diving-path.a"
URL="https://github.com/${REPO}/releases/download/frosty-delta-cosmic-ember/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
