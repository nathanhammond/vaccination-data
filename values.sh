#!/bin/bash
# May 1 2022 - Revised to include fourth dose (2nd booster) data -JC
# November 12 2021 - Revised to include third dose (booster) data -JC

type=$1

cd bar_vaccination_date
cat `ls -1 | tail -1` | jq --raw-output "[.[].firstDose.daily.$type], [.[].secondDose.daily.$type], [.[].thirdDose.daily.$type], [.[].fourthDose.daily.$type] [.[].firstDose.cumulative.$type], [.[].secondDose.cumulative.$type], [.[].thirdDose.cumulative.$type], [.[].fourthDose.cumulative.$type] | @tsv"
