#!/bin/bash

function download {
  curl -si https://vcd.cvpss.hk/data/$1.json > response.txt

  lastmodified=`cat response.txt | grep 'Last-Modified'`
  isodate=`node -e 'console.log(new Date(Date.parse(process.argv[1].replace(/^Last-Modified: /, ""))).toISOString())' "$lastmodified"`

  mkdir -p $1
  tail -1 response.txt > "$1/$isodate.json"

  rm response.txt
}

download summary
download pie_age
download pie_venue
download pie_gender
download bar_vaccination_date

git add --all
git commit -m `date +"%Y-%m-%dT%H:%M:%S%z"`
git push