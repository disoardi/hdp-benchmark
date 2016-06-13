#!/bin/bash

LOG_DIR=benchmark_output

if [ -d $LOG_DIR ]; then
   echo "LOG_DIR folder exists"
else
   mkdir $LOG_DIR
fi

# Log file
LOG_DATE=$(date +'%Y-%m-%d-%H%M')
exec >> ./${LOG_DIR}/${LOG_DATE}.benchmark.log
exec 2>&1

CODA_YARN=default

hdfs dfs -rm -r /benchmarks/*

echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 10000 /benchmarks/tera/teragenouta1-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 10000 /benchmarks/tera/teragenouta1-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenouta1-1 /benchmarks/tera/terasortouta1-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenouta1-1 /benchmarks/tera/terasortouta1-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortouta1-1 /benchmarks/tera/teravalidatea1-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortouta1-1 /benchmarks/tera/teravalidatea1-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 200000 /benchmarks/tera/teragenoutb2-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 200000 /benchmarks/tera/teragenoutb2-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutb2-1 /benchmarks/tera/terasortoutb2-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutb2-1 /benchmarks/tera/terasortoutb2-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutb2-1 /benchmarks/tera/teravalidateb2-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutb2-1 /benchmarks/tera/teravalidateb2-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 2000000 /benchmarks/tera/teragenoutc3-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 2000000 /benchmarks/tera/teragenoutc3-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutc3-1 /benchmarks/tera/terasortoutc3-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutc3-1 /benchmarks/tera/terasortoutc3-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutc3-1 /benchmarks/tera/teravalidatec3-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutc3-1 /benchmarks/tera/teravalidatec3-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 20000000 /benchmarks/tera/teragenoutd4-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 20000000 /benchmarks/tera/teragenoutd4-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutd4-1 /benchmarks/tera/terasortoutd4-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutd4-1 /benchmarks/tera/terasortoutd4-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutd4-1 /benchmarks/tera/teravalidated4-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutd4-1 /benchmarks/tera/teravalidated4-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 100000000 /benchmarks/tera/teragenoute5-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 100000000 /benchmarks/tera/teragenoute5-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoute5-1 /benchmarks/tera/terasortoute5-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoute5-1 /benchmarks/tera/terasortoute5-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoute5-1 /benchmarks/tera/teravalidatee5-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoute5-1 /benchmarks/tera/teravalidatee5-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 500000000 /benchmarks/tera/teragenoutf6-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teragen -Dmapreduce.job.queuename=${CODA_YARN} 500000000 /benchmarks/tera/teragenoutf6-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutf6-1 /benchmarks/tera/terasortoutf6-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar terasort -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/teragenoutf6-1 /benchmarks/tera/terasortoutf6-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutf6-1 /benchmarks/tera/teravalidatef6-1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples.jar teravalidate -Dmapreduce.job.queuename=${CODA_YARN} /benchmarks/tera/terasortoutf6-1 /benchmarks/tera/teravalidatef6-1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -write -nrFiles 10 -fileSize 1000"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -write -nrFiles 10 -fileSize 1000
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -read -nrFiles 10 -fileSize 1000"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -read -nrFiles 10 -fileSize 1000
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -clean"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -clean
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -write -nrFiles 100 -fileSize 1000"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -write -nrFiles 100 -fileSize 1000
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -read -nrFiles 100 -fileSize 1000"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -read -nrFiles 100 -fileSize 1000
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -clean"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -clean
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -write -nrFiles 100000 -fileSize 1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -write -nrFiles 100000 -fileSize 1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -read -nrFiles 100000 -fileSize 1"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -read -nrFiles 100000 -fileSize 1
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -clean"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar TestDFSIO -Dmapreduce.job.queuename=${CODA_YARN} -clean
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 1000
    -replicationFactorPerFile 3 -readFileAfterOpen true
    -baseDir /benchmarks/NNBench-A1-`hostname -s`"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write \
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 1000 \
    -replicationFactorPerFile 3 -readFileAfterOpen true \
    -baseDir /benchmarks/NNBench-A1-`hostname -s`
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 10000
    -replicationFactorPerFile 3 -readFileAfterOpen true
    -baseDir /benchmarks/NNBench-B1-`hostname -s`"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write \
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 10000 \
    -replicationFactorPerFile 3 -readFileAfterOpen true \
    -baseDir /benchmarks/NNBench-B1-`hostname -s`
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 100000
    -replicationFactorPerFile 3 -readFileAfterOpen true
    -baseDir /benchmarks/NNBench-C1-`hostname -s`"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write \
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 100000 \
    -replicationFactorPerFile 3 -readFileAfterOpen true \
    -baseDir /benchmarks/NNBench-C1-`hostname -s`
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 1000000
    -replicationFactorPerFile 3 -readFileAfterOpen true
    -baseDir /benchmarks/NNBench-D1-`hostname -s`"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write \
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 1000000 \
    -replicationFactorPerFile 3 -readFileAfterOpen true \
    -baseDir /benchmarks/NNBench-D1-`hostname -s`
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 10000000
    -replicationFactorPerFile 3 -readFileAfterOpen true
    -baseDir /benchmarks/NNBench-E1-`hostname -s`"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar nnbench -Dmapreduce.job.queuname=${CODA_YARN} -operation create_write \
    -maps 12 -reduces 6 -blockSize 1 -bytesToWrite 0 -numberOfFiles 10000000 \
    -replicationFactorPerFile 3 -readFileAfterOpen true \
    -baseDir /benchmarks/NNBench-E1-`hostname -s`
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar mrbench -Dmapreduce.job.queuename=${CODA_YARN} -numRuns 10"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar mrbench -Dmapreduce.job.queuename=${CODA_YARN} -numRuns 10
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar mrbench -Dmapreduce.job.queuename=${CODA_YARN} -numRuns 100"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar mrbench -Dmapreduce.job.queuename=${CODA_YARN} -numRuns 100
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar mrbench -Dmapreduce.job.queuename=${CODA_YARN} -numRuns 1000"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar mrbench -Dmapreduce.job.queuename=${CODA_YARN} -numRuns 1000
echo "############# E' FINITO! #############"
echo "############# E' PARTITO #############"
echo "COMMAND: hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar SliveTest -Dmapreduce.job.queuename=${CODA_YARN} -baseDir /benchmarks/SliveTest/Ax"
time hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient.jar SliveTest -Dmapreduce.job.queuename=${CODA_YARN} -baseDir /benchmarks/SliveTest/Ax
echo "############# E' FINITO! #############"


cat ./${LOG_DIR}/${LOG_DATE}.benchmark.log | awk ' BEGIN{c=1} /COMMAND|real/ {print}' >> ./${LOG_DIR}/${LOG_DATE}.dati.txt
