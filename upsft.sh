#!/bin/bash

echo "Welcome to Ubuntu Package Source Fixing Tool (UPSFT)"
echo "<Author: unsuitable001>"

DIST=$(lsb_release -c -s)

if curl --output /dev/null --silent --head --fail http://us.archive.ubuntu.com/ubuntu/dists/"$DIST"; then
  echo "Everything is fine."
else
  echo "$DIST, please update soon. Fixing issues..."
  sudo sed -i 's|http://us.archive.ubuntu.com/ubuntu/|http://old-releases.ubuntu.com/ubuntu/|g' /etc/apt/sources.list
  sudo sed -i 's|http://security.ubuntu.com/ubuntu/|http://old-releases.ubuntu.com/ubuntu/|g' /etc/apt/sources.list
  sudo apt-get update
  echo "Done! Errors fixed! But, remember to update your OS asap."
fi

