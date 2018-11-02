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
    # or if args start with digit	
    RUNSERVER=1
fi

if [ "$RUNSERVER" ]; then
    python manage.py runserver $@
else
    $@
fi

