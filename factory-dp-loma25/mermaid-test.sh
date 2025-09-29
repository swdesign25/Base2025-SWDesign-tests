#!/bin/bash

# Collect information ...

TARGET=5
SQFILE=docs/factory-sequence.mermaid
CLFILE=docs/factory-class.mermaid

# No test, initialize saldo
SALDO=1
RESULT="RESULT: $SALDO"

# Seq diagram
grep -iq factory $SQFILE 
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"

# Seq diagram
grep -iq holiday $SQFILE 
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"

# Seq diagram
egrep -iqe 'hotel|museum|flight|city|budget' $SQFILE
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"

# Class diagram
grep -iq factory $CLFILE
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"

# Class diagram
grep -iq holiday $CLFILE
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"

# Class diagram
egrep -iqe 'hotel|museum|flight|city|budget' $CLFILE 
if [ $? -eq 0 ]; then SALDO=$(($SALDO+1)); fi
RESULT="$RESULT - $SALDO"

if [ $SALDO -gt $TARGET ]; then
     echo "SUCCESS($RESULT)"
     exit 0
  else
     echo "FAILED($RESULT)"
     exit 1
fi
