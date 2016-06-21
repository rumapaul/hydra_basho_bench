#!/bin/bash

#if [ $# -eq 0 ]
#then
#	AllNodes=`cat script/allnodes`
#else
#	AllNodes=$1	
#fi

AllNodes=`cat script/allnodes`
echo "Stopping nodes:" $AllNodes

#Stop="antidote/rel/antidote/bin/antidote stop" 
Stop="sudo pkill beam"
RemoveData="sudo rm -rf antidote/rel/antidote/data/*"
RemoveLog="sudo rm -rf antidote/rel/antidote/log/*"
./script/parallel_command.sh "$AllNodes" "$Stop" 
./script/parallel_command.sh "$AllNodes" "$RemoveData" 
./script/parallel_command.sh "$AllNodes" "$RemoveLog" 
