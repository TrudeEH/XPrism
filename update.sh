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

if [ $? != 0 ]
then
	echo
	echo "==========[GIT CONFLICT DETECTED! ]=========="
	echo "Resetting the Git repository will fix the issue."
	echo "Wipe your settings?"
	echo
	read -p "y/n: " wipe
	if [ $wipe == "y" ]
	then
		echo "Wipe confirmed."
		sleep 1
		git reset --hard
		echo "done."
		sleep 2
	else
		echo "Update cancelled."
		echo "The script will exit in 10 seconds."
		sleep 10
	fi
fi

echo
echo "Run installer"
./install.sh
