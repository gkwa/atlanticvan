#!/usr/bin/env bash

apt-get update

apt-get install --assume-yes curl

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
apt-get --assume-yes install nodejs

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

apt-get install --assume-yes xvfb libglib2.0-0 libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libdbus-1-3 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0
