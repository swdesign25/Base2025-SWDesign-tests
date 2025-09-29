#!/usr/bin/bash

echo "Running the original Maven tests ========================"

BASE_REPO="https://github.com/swdesign25/Base2025-Factory-Holiday.git"
PKG_PATH="src/test/java/fi/sade25/tla/observer/holidayfactory"

echo " -> 1) clone the original base repository"
git clone $BASE_REPO .codetest

echo " -> 2) copy the original tests in place"
cp .codetest/$PKG_PATH/*.java $PKG_PATH/.

find src -name "*.java" -exec cat {} \;

echo " -> 3) run the tests"
mvn test

