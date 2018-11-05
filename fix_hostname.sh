#!/bin/sh

CURRENT=`hostname`

echo "Choose a new hostname; for example, (your name)-pi, e.g. paul-pi:"
read NEWNAME

HOSTNAMEERROR=`hostname "$NEWNAME" 2>&1`

if [ -n "$HOSTNAMEERROR" ]; then
    echo "$HOSTNAMEERROR"
    echo "Invalid hostname."
    exit 1
fi

echo "$NEWNAME" > /etc/hostname

sed -i 's/'"$CURRENT"'/'"$NEWNAME"'/g' /etc/hosts

echo 'Done. Please run "sudo reboot" when ready.'
