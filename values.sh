#!/bin/bash

type=$1

cd bar_vaccination_date
cat `ls -1 | tail -1` | jq --raw-output "[.[].firstDose.daily.$type], [.[].secondDose.daily.$type], [.[].firstDose.cumulative.$type], [.[].secondDose.cumulative.$type] | @tsv"
