# HK Vaccination Data Capture

A script that monitors for updates to government-provided data to prevent daily overwriting of updates from losing previous data.

## Data Export

Helper script for pasting into the [HK Vaccination](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=877381111) spreadsheet.

```sh
./values.sh sinovac | pbcopy
./values.sh biontech | pbcopy
```