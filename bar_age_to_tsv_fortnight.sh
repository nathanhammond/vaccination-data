FILEPATH=`ls -1dr bar_age/* | head -1`
DATE=`ls -1r bar_age | head -1 | cut -d'T' -f 1`

FORTNIGHTDATE=`date -v "-14d" -j -f '%Y-%m-%d' '+%Y-%m-%d' $DATE`
FORTNIGHTFILEPATH=`ls -1dr bar_age/*$FORTNIGHTDATE* | head -1`

echo -e "$FORTNIGHTDATE By Cohort\tSinovac 1\tBioNTech 1\tTotal 1\tSinovac 2\tBioNTech 2\tTotal 2\tSinovac 3\tBioNTech 3\tTotal 3"
cat $FORTNIGHTFILEPATH | jq -r '.[] | [.age, .firstDose.sinovac, .firstDose.biontech, .firstDose.total, .secondDose.sinovac, .secondDose.biontech, .secondDose.total, .thirdDose.sinovac, .thirdDose.biontech, .thirdDose.total] | @tsv'