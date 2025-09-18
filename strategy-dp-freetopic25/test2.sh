#!/usr/bin/bash

echo "Maven in t1-folder"

echo " -> search for pox.xml"
find t1-basic-solution -name pom.xml -exec cat {} \;

echo " -> run mvn validate"
cd t1-basic-solution 
mvn validate

