#!/bin/bash

type=$1

cd pie_age
cat `ls -1 | tail -1` | jq '.data[].age'
