#!/bin/bash

type=$1
dose=$2

cd bar_vaccination_date
cat `ls -1 | tail -1` | jq --raw-output ".[].${dose}Dose.daily.$type"
