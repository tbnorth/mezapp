#!/bin/sh
if [ ! -d /local/mezprj ]; then
    mkdir /local/mezprj
    cp -r . /local/mezprj/
fi
cd /local/mezprj

RUNSERVER=''

if [ -z "$*" ]; then
    # run server by default	
    RUNSERVER=1
elif ( echo "$*" | grep '^[[:digit:]]' ); then
    # or if args start with digit, as in docker run mezapp 10.0.0.2:8080
    RUNSERVER=1
fi

if [ "$RUNSERVER" ]; then
    python manage.py runserver $@
else
    $@
fi
