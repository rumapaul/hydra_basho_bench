#!/bin/bash

First=`head -1 ./script/allnodes`
Others=`tail -n+2 ./script/allnodes`
if [ -n "$Others" ]; then
    echo "Connecting" "${Others[@]}" to $First
    Others=`echo ${Others[@]}`
    ./script/joinNodesToRing.sh $First "$Others"
else
    echo "not connecting.."
fi

./script/waitRingsToFinish.sh $First
echo "Ring transfer have finished..."

