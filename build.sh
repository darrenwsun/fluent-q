#!/bin/bash -e

# assume this script is one level down the project directory
cd "$(dirname $0)"

bash bin/qcumber.sh
bash bin/docgen.sh
