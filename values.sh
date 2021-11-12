#!/bin/bash
# November 12 2021 - Revised to include third dose (booster) data -JC

type=$1

cd bar_vaccination_date
cat `ls -1 | tail -1` | jq --raw-output "[.[].firstDose.daily.$type], [.[].secondDose.daily.$type], [.[].thirdDose.daily.$type], [.[].firstDose.cumulative.$type], [.[].secondDose.cumulative.$type], [.[].thirdDose.cumulative.$type] | @tsv"
