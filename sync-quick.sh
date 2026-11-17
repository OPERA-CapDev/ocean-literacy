#!/bin/sh
# Copies the full Explorer into the quick folder and switches the quick flag on.
set -e
cp ocean-forecasting-explorer/index.html ocean-forecasting-explorer-quick/index.html
rm -rf ocean-forecasting-explorer-quick/img ocean-forecasting-explorer-quick/icons
cp -r ocean-forecasting-explorer/img ocean-forecasting-explorer-quick/img
cp -r ocean-forecasting-explorer/icons ocean-forecasting-explorer-quick/icons
sed -i "s/  quick: false,                      \/\/ true: short version/  quick: true,                       \/\/ true: short version/" ocean-forecasting-explorer-quick/index.html
grep -q "quick: true" ocean-forecasting-explorer-quick/index.html && echo "quick version synced"
