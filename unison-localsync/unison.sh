#!/bin/sh
cp /config/* /root/.unison

if [ -z "$REPEAT" ]; then
  exec unison default -batch
else
  exec unison default -batch -repeat $REPEAT
fi 


