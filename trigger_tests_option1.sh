#!/bin/bash

SEARCH_DIR="fixtures"
export BROWSERSTACK_PROJECT_NAME=$1
export BROWSERSTACK_BUILD_ID=$2
export BROWSERSTACK_LOGFILE="bstack-local-logs.txt"
export BROWSERSTACK_VERBOSE="1"
export BROWSERSTACK_USE_AUTOMATE="0"

for entry in "$SEARCH_DIR"/*.js
do
  echo "Running fixure: " "$entry"
  export BROWSERSTACK_TEST_RUN_NAME=$entry
  testcafe 'browserstack:firefox@74.0:OS X High Sierra,browserstack:chrome@80.0:OS X High Sierra,browserstack:ie@11:Windows 10,browserstack:chrome@75.0:Windows 8.1,browserstack:firefox@75.0:Windows 8.1' "$entry"
done
