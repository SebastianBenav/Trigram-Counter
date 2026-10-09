#!/bin/bash

TOTALtrigramcount=0

for i in {A..Z}; do
	for j in {A..Z}; do
		for k in {A..Z}; do 
			SPECtrigramcount=$(grep -o $i$j$k ciphertext_msg.txt | wc -l)
			TOTALtrigramcount=$((TOTALtrigramcount + SPECtrigramcount))
		done;
	done;
done;

echo Total trigram count is $TOTALtrigramcount

for i in {A..Z}; do
	for j in {A..Z}; do
		for k in {A..Z}; do
			SPECtrigramcount=$(grep -o $i$j$k ciphertext_msg.txt | wc -l)
		        trigramfreq=$(awk "BEGIN {print $SPECtrigramcount/$TOTALtrigramcount}")
			
			if [ $SPECtrigramcount -ne 0 ]; then
				echo Frequency of trigram $i$j$k is $trigramfreq
			fi			
		done;
	done;
done;	


