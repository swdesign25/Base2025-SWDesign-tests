#!/bin/bash

# Collect information ...

GT_TARGET=2

# No test, initialize saldo
SALDO=1
RESULT="RESULT: $SALDO"

# Enum
KEYWORD=enum
grep -rl --include="*.java" "$KEYWORD" src | grep -m 1 -q java
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"

# ResourceBundle
KEYWORD=java.util.ResourceBundle
grep -rl --include="*.java" "$KEYWORD" src | grep -m 1 -q java
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"


# Wrap up - final result ------

if [ $SALDO -gt $GT_TARGET ]; then
     echo "SUCCESS($RESULT)"
     exit 0
  else
     echo "FAILED($RESULT)"
     exit 1
fi

