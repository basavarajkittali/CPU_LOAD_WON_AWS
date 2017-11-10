#############################################
#Script: check-cpu-aws-host.sh              #
#This script is written by Basavaraj Kittali#
#Date: 31 Oct 2017                          #
#############################################
#!/bin/sh

for i in `cat ~/aws-hosts.txt`;
do
        VAL=`cat list-aws.servers.txt | grep $i`
        IPADD=`echo $VAL | awk '{print $7}'`
        ssh ${IPADD} 'w'
done

exit 0
