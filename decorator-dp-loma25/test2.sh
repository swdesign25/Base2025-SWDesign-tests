#!/usr/bin/bash

echo "Valid Maven"

echo " -> search for pox.xml"
find . -name pom.xml -exec cat {} \;

echo " -> run mvn validate"
mvn validate

