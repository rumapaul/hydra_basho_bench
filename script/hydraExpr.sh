#!/bin/bash


#loop for number of reads
Time=`date`

./script/stopNodes.sh  >> logs/"$Time"
./script/startNodes.sh  >> logs/"$Time"
./script/connectNodes.sh

sleep 120

# Run the benchmarks in parallel
# This is not a good way to do this, should be implemented inside basho bench
./basho_bench ./examples/antidote_pb.config


#./script/runSimpleBenchmark.sh $4 $BenchmarkType
