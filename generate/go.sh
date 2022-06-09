#!/bin/bash

cd /opt/openapi-generator/modules/openapi-generator-cli/target
echo $PWD
java -jar openapi-generator-cli.jar generate \
    -i /local/petstore.yaml \
    -g go \
    -o /local/out/go