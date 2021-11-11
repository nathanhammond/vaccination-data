#!/bin/bash

function download {
  curl -si https://vcd.cvpss.hk/data/$1.$2 > response.txt

  lastmodified=`cat response.txt | grep 'Last-Modified'`
  isodate=`node -e 'console.log(new Date(Date.parse(process.argv[1].replace(/^Last-Modified: /, ""))).toISOString())' "$lastmodified"`

  mkdir -p $1
  tail -1 response.txt > "$1/$isodate.$2"

  rm response.txt
}

download summary json
download pie_age json
download pie_venue json
download pie_gender json
download bar_vaccination_date json
download bar_age json
download bar_venue json
download data2a csv
download data2b csv
download data4a csv
download data4b csv

git add --all
git commit -m `date +"%Y-%m-%dT%H:%M:%S%z"`
git push