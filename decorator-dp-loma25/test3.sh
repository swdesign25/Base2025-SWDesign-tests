#!/usr/bin/bash

echo "Pass the tests ========================"

echo " -> 1) clone the original base repository"
git clone https://github.com/swdesign25/Base2025-Decorator-Holiday.git .codetest

echo " -> 2) copy the original tests in place"
cp .codetest/src/test/java/fi/sade25/patterns/decorator/*.java src/test/java/fi/sade25/patterns/decorator/.
find src -name "*.java" -exec cat {} \;

echo " -> 3) run the tests"
mvn test

