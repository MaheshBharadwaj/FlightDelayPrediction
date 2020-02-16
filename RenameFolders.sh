#! /bin/bash

for year in '2016' '2017'
do
	((i=1))
	cd /home/mahesh/Documents/FlightDelayPrediction/FlightData/${year}
	for file in $(ls | sort -n -t'_' -k7)
	do
		mv ${file} ${year}_${i}
		((i = i + 1))
	done
done