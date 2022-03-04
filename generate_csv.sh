#!/usr/bin/bash
rm -rf /tmp/data.csv
echo "emp_name,city,empid" >> /tmp/data.csv
echo "piyush,gurgaon,1000" >> /tmp/data.csv
echo "pavan,delhi,10001" >> /tmp/data.csv
aws s3 cp /tmp/data.csv s3://nmap-report-oregon
echo $?
if [ $? -eq 0 ]
then
  exit 0
else
  exit 1
fi



