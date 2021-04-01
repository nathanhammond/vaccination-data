#!/bin/bash

type=$1

cd pie_gender
cat `ls -1 | tail -1` | jq '.data[].value'
