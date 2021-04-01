# HK Vaccination Data Capture

A script that monitors for updates to government-provided data to prevent daily overwriting of updates from losing previous data.

## Data Export

Helper script for pasting into the [HK Vaccination](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=877381111) spreadsheet.

```sh
./values.sh sinovac | pbcopy
./values.sh biontech | pbcopy
```

## Spreadsheet Update Steps

After publishing of the [daily press release](https://www.info.gov.hk/gia/general/today.htm):

0. [Summary](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=877381111)
  - Update Date (B1)
1. [First Dose Vaccination Sites](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=0)
  - Update BioNTech CVC Doses (Row 22)
  - Update Sinovac CVC Doses (Row 30)
  - Update GOPC Doses (Row 48)
  - Update Private Clinic Doses (Row 50)
2. [Second Dose Vaccination Sites](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=942563013)
  - Update BioNTech CVC Doses (Row 22)
  - Update Sinovac CVC Doses (Row 30)
  - Update GOPC Doses (Row 48)
  - Update Private Clinic Doses (Row 49)
3. [Appointments](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1085462531)
  - Update Sinovac Appointments Made (Row 4)
  - Update BioNTech Appointments Made (Row 9)
  - If available, update Cumulative Appointments Made
4. [Attendance](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1743032585)
  - Update Sinovac Received (Attendance Rate) (Row 5)
  - Update BioNTech Received (Attendance Rate) (Row 12)
5. [Sinovac CoronaVac](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1878857625)
  - Run `./values.sh sinovac | pbcopy` and paste into Rows 4-7.
  - If new doses have arrived, update Doses Received.
6. [Sinovac CoronaVac by Program Change](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=442072332)
  - If there has been a program change, insert a new row and add a note.
  - Insert today's dose numbers.
  - Ensure that the [corresponding chart](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=2007182375) contains all rows and an appropriate amount of lookahead.
7. [BioNTech Comirnaty](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1969119955)
  - Run `./values.sh biontech | pbcopy` and paste into Rows 4-7.
  - If new doses have arrived, update Doses Received.
8. [BioNTech Comirnaty by Program Change](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=918530009)
  - If there has been a program change, insert a new row and add a note.
  - Insert today's dose numbers.
  - Ensure that the [corresponding chart](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1950473671) contains all rows and an appropriate amount of lookahead.
