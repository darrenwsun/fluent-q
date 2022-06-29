#!/bin/bash -e

# assume this script is one level down the project directory
cd "$(dirname $0)"/..

mkdir tempdocs

echo generating docs
q $AXLIBRARIES_HOME/ws/qdoc.q_ -src src -out tempdocs -map overview:fileoverview -render -sitename "Fluent-Q Documentation"

cd tempdocs/doc
mkdocs build --theme material

cd ../..
rm -rf docs/*
mv tempdocs/doc/site/* docs
rm -rf tempdocs
