#!/bin/bash


AllNodes=`cat script/allnodes`
Command1="./antidote/rel/antidote/bin/antidote stop && pkill beam"
Command2="cd ./antidote && git pull hydra" 
Command3="cd ./antidote/ && make rel"

./script/parallel_command.sh "$AllNodes" "$Command1"	
./script/parallel_command.sh "$AllNodes" "$Command2"	
./script/parallel_command.sh "$AllNodes" "$Command3"	
