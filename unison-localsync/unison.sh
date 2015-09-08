#!/bin/sh
cp /config/* /root/.unison
exec unison default -batch -repeat 5
