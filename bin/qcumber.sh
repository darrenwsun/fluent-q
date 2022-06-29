#!/bin/bash -e

# assume this script is one level down the project directory
cd "$(dirname $0)"/..

echo Running qcumber tests
q $AXLIBRARIES_HOME/ws/qcumber.q_ -src src -test specs -out reports/qcumber.json -color -breakOnErrors
