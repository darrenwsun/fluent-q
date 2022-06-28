#!/bin/bash -e

echo clean up docs directory
rm -rf docs/*

echo generating docs
q $AXLIBRARIES_HOME/ws/qdoc.q_ -src src -out docs -render -config resources/mkdocs.yml

echo restructure docs directory
mv docs/doc docs/reference
rm -rf docs/md
