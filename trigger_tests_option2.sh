#!/bin/bash

export BROWSERSTACK_PROJECT_NAME=$1
export BROWSERSTACK_BUILD_ID=$2
export BROWSERSTACK_LOGFILE="bstack-local-logs.txt"
export BROWSERSTACK_VERBOSE="1"
export BROWSERSTACK_USE_AUTOMATE=$3

SEARCH_DIR="fixtures"
file_list=( )
for entry in "$SEARCH_DIR"/*.js
do
  file_list+=("$entry")
done
echo "Fixtures found: " ${file_list[@]}
echo "Fixture count: " ${#file_list[@]}
testcafe 'browserstack:firefox@74.0:OS X High Sierra,browserstack:chrome@80.0:OS X High Sierra,browserstack:ie@11:Windows 10,browserstack:chrome@80.0:Windows 10,browserstack:firefox@75.0:Windows 8.1' -c ${#file_list[@]} "${file_list[@]}"
