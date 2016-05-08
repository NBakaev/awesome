#!/usr/bin/env bash

# if some comand fail - stop script
# alternative or use `set -e` in this bash script
function failOnError {
    "$@"
    local status=$?
    if [ $status -ne 0 ]; then
        echo "error with $1" >&2
        exit $status;
    fi
    return $status
}

# 1) change version of parent module
mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}
# 2) deploy parent module
failOnError mvn deploy -N

# 3) deploy another module
cd some_module
failOnError mvn deploy
