#!/bin/bash

set -e

WORKING_DIR=/tmp/budgets_data

# Clean working dir
rm -rf $WORKING_DIR
mkdir $WORKING_DIR

# Extract > Dump all municipalities
cd $DEV_DIR/gobierto-etl-budgets-data/; ruby operations/gobierto_budgets/dump_municipalities/run.rb > $WORKING_DIR/organizations.txt

# Load > Calculate bubbles
cd $DEV_DIR/gobierto-etl-utils/; ruby operations/gobierto_budgets/bubbles/run.rb $WORKING_DIR/organizations.txt

