#!/bin/bash

# Remove dist and current built iso
echo "[HideOS Builder] Removing previous build cache..."
sudo rm -rf ./dist
sudo rm -rf ./hideos-*

# Generate missing license files
sudo mkdir -p ./dist/x86_64/airootfs/usr/share/licenses/common/GPL2/
sudo touch ./dist/x86_64/airootfs/usr/share/licenses/common/GPL2/license.txt

# Run mkarchiso and archiso
echo "[HideOS Builder] Calling archiso..."
sudo mkarchiso -v -w ./dist -o ./ ./src

echo "[HideOS Builder] Done."
