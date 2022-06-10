#!/bin/bash

cd /opt/openapi-generator/modules/openapi-generator-cli/target
echo $PWD
java -jar openapi-generator-cli.jar generate \
    -g spring \
    --library spring-boot \
    -i /local/petstore.yaml \
    -o /local/out/java \
    \
    -p groupId=com.example \
    -p artifactId=petstore \
    -p artifactVersion=0.0.1-SNAPSHOT \
    \
    -p basePackage=com.example.petstore \
    -p configPackage=com.example.petstore.config \
    -p apiPackage=com.example.petstore.api \
    -p modelPackage=com.example.petstore.model \
    \
    -p sourceFolder=src/main/java \
    \
    -p dateLibrary=java8 \
    -p java11=true \
    \
    -p reactive=true \
    -p useSpringController=true