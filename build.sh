#!/bin/bash

echo "[HideOS Builder] Removing previous build cache..."
sudo rm -rf ./dist
sudo rm -rf ./hideos-*

echo "[HideOS Builder] Calling archiso..."
sudo mkarchiso -v -w ./dist -o ./ ./releng

echo "[HideOS Builder] Done."


