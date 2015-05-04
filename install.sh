#!/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

echo "Copying daemonizer to site-packages"
cp -R "daemonizer" "/usr/local/lib/python2.7/site-packages"
echo "Done."
