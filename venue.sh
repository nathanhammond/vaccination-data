#!/bin/bash

type=$1

cd pie_venue
cat `ls -1 | tail -1` | jq '.data[].value'
