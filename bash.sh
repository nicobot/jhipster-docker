#!/bin/bash
. _export.sh

docker exec -ti --user=1000:1000 $PROJECTNAME-emotion bash
