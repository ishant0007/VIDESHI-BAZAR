#!/bin/bash
echo "Welcome To Videshi Bazar" | boxes -d stone
echo
echo "Enter the Stock ticker in capitals with start and end date "
echo "(for example - AMZN 2019-01-01 2019-02-01 ) "
echo
read f
python dataextract.py $f> output.txt
echo
echo "Displaying date-wise price history of the stock " | boxes -d stone
echo
grep -i "\[.*" output.txt | cut -d "[" -f 2 > extracted.py
sed -i '$ s/.$//' extracted.py
sed -i '1s/^/x=\[/' extracted.py
cat extracted.py csvconvert.py > finalcsv.py
python finalcsv.py
awk 'BEGIN {FS=","} {OFS="  ;  "} {print $1,$2,$5,$4,$3}' my_file.csv | column -t
python graph.py
echo 
echo "Price charts have been generated in new window for easier view - " | boxes -d stone
echo
echo "A PROJECT BY TEAM VINASHAN

Ishant Gupta            E21BCAU0026
Vedanth T. Sreenivasan  E21BCAU0009
Vanya Tiwari            E21CSEU0111
Archita Dubey           E21BCAU0068" | boxes -d stone

echo "Thank-you" | boxes -d stone

