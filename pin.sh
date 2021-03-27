#!/bin/bash
echo $1 $2 $3 
len=("$3")
blpin(){
#i=1
for i in $( eval echo {0..${len}} )
do
curl "https://circle.happycell.mobi/mylife/appapi/appcall.php?op=getOTC&pin=19823&app_version=75&msisdn='${2}'" --header 'x-app-key: 0skgg0ksg4880840w8w4gco0k4wckw0cg0w0w88s'
#i=$(($i + 1))
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
