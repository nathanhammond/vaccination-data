# HK Vaccination Data Capture

A script that monitors for updates to government-provided data to prevent daily overwriting of updates from losing previous data.

## Data Export

Helper script for pasting into the [HK Vaccination](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=877381111) spreadsheet.

```sh
./values.sh sinovac | pbcopy
./values.sh biontech | pbcopy
```

## Spreadsheet Update Steps

### Daily Data

This repository automatically collects the daily data. After the daily data is published, update it here:

1. [Summary](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=877381111)
- Update Date (B1)

2. [Doses by Age](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1756790307)
  - Run `./age.sh | pbcopy` and paste into Rows 3-10.

3. [Doses by Gender](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=434136726)
  - Run `./gender.sh | pbcopy` and paste into Rows 3-4.

4. [Doses by Venue](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=512477663)
  - Run `./venue.sh | pbcopy` and paste into Rows 3-6.

5. [Sinovac CoronaVac](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1878857625)
  - Run `./values.sh sinovac | pbcopy` and paste into cell E4.
  - If new doses have arrived, update Doses Received.

6. [BioNTech Comirnaty](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1969119955)
  - Run `./values.sh biontech | pbcopy` and paste into cell E4.
  - If new doses have arrived, update Doses Received.


### Daily Press Release

After the [daily press release](https://www.info.gov.hk/gia/general/today.htm) is published, update it here:

1. [First Dose Vaccination Sites](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=0)
  - Update BioNTech CVC Doses (Row 22)
  - Update Sinovac CVC Doses (Row 30)
  - Update Sinovac Clinic Doses (Row 50)

2. [Second Dose Vaccination Sites](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=942563013)
  - Update BioNTech CVC Doses (Row 22)
  - Update Sinovac CVC Doses (Row 30)
  - Update Sinovac Clinic Doses (Row 49)

3. [Appointments](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1085462531)
  - Update Sinovac Appointments Made (Row 4)
  - Update BioNTech Appointments Made (Row 9)

4. [Attendance](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1743032585)
  - Update Sinovac Received (Attendance Rate) (Row 5)
  - Update BioNTech Received (Attendance Rate) (Row 12)


### Models

There are two predictive models created. Updating the models is a bit more involved, but not complicated.

1. [Lot 1B002A](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1446776572) is about to be retired.
  - Copy Row 17 `GROWTH` formula one cell to the right.
  - Copy last column of grey block over one column.
  - If there is a trend period change, adjust the trend period row (Row 5) and the `GROWTH` formula to refer to the correct periods.

2. [Peak Vaccination](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1850530652) model has been created, but isn't valid yet. For it to be valid, we need: general availability, unconstrained appointments, 7 days of data without program changes.
  - `GROWTH` formulas in rows 12 & 15, trend periods in rows 11 & 14.

### After Analysis

1. [Sinovac CoronaVac by Program Change](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=442072332)
  - If there has been a program change, insert a new row and add a note.
  - Migrate the formula for automatic population of values to the new row.
  - Ensure that the [corresponding chart](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=2007182375) contains all rows and an appropriate amount of lookahead.

2. [BioNTech Comirnaty by Program Change](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=918530009)
  - If there has been a program change, insert a new row and add a note.
  - Migrate the formula for automatic population of values to the new row.
  - Ensure that the [corresponding chart](https://docs.google.com/spreadsheets/d/1V3i6IDeaAInmR_cXdWdHLMV0iGC4cBc6BsNdrbTAVLw/edit#gid=1950473671) contains all rows and an appropriate amount of lookahead.
