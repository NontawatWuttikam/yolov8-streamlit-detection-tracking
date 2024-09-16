#!/bin/bash
ps -ef | grep -v grep | grep autossh.*30025.*$1@$2 | awk {'print$2'} | xargs -r --verbose kill
autossh -f -N -R 0.0.0.0:30025:localhost:30025 $1@$2
