#!/bin/bash

systemctl daemon-reload
systemctl start avahi-daemon
systemctl enable avahi-daemon
