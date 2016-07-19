#!/bin/bash
. _export.sh

docker exec -it $PROJECTNAME-emotion env TERM=xterm bash -l