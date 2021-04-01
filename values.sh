#!/bin/bash

type=$1

cd bar_vaccination_date
cat `ls -1 | tail -1` | jq ".[-1].firstDose.daily.$type, .[-1].secondDose.daily.$type, .[-1].firstDose.cumulative.$type, .[-1].secondDose.cumulative.$type"
