#!/bin/sh
if [ -z "$OPTIONS" ]; then
  exec unison default -batch
else
  exec unison default -batch $OPTIONS
fi 


