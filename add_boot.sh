#!/bin/bash

grep -q "avahi-daemon" /etc/rc.local || sed -i $'s/^exit 0/avahi-daemon -D || true\\\nexit 0/g' /etc/rc.local
