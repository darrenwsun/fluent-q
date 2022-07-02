#!/bin/bash -e

# assume this script is one level down the project directory
cd "$(dirname $0)"

bash -e bin/qcumber.sh
bash -e bin/docgen.sh
