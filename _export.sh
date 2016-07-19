#!/bin/bash
export FILEPATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
export SCRIPTDIR=`dirname $FILEPATH`
export PROJECTNAME=`basename $SCRIPTDIR`
export DOCKERROOT=`pwd`
