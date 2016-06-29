#!/bin/bash

AllNodes=`cat script/allnodes`
Command3="service ntp stop"
Command4="sudo /usr/sbin/ntpdate -b ntp.ubuntu.com"
./script/parallel_command.sh "$AllNodes" "$Command3"	
./script/parallel_command.sh "$AllNodes" "$Command4"	
