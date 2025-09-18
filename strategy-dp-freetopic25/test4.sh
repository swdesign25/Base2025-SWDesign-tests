#!/usr/bin/bash

echo "Maven in t2-pattern-based-solution"

echo " -> search for pox.xml"
find t2-pattern-based-solution -name pom.xml -exec cat {} \;

echo " -> run mvn validate"
cd t2-pattern-based-solution
mvn validate

