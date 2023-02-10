#! /bin/bash

echo
echo "CD into home directory..."
cd ~

echo
echo "Clone Github repo (Will fail if already present. This is normal.)..."
git clone https://github.com/TrudeEH/TruDE

echo
echo "CD into repo..."
cd TruDE

echo
echo "Pull changes..."
git pull

echo
echo "Run installer"
./install.sh
