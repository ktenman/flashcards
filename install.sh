#!/bin/sh
set -e
# This script is meant for quick & easy install via:
sudo apt-get update
curl -sSL https://get.docker.com/ | sh
sudo apt-get install git
git clone https://github.com/ktenman/flashcards.git
cd flashcards
sh start.sh
