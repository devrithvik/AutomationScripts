#!/bin/bash
backup_dir=$1
destination_dir=$2
tstamp=$(date "+%Y-%m-%d-%H-%M-%S")
tar -czfP  ${destination_dir}/$tstamp.tgz  ${backup_dir}

#INFO:
# this shell script takes 2 aurguments 
# 1. Path to directory which you want to protect (back up) 
# 2. Path to directory where you want to store the .tgz file with timestamp

#"-P"  for avoiding the "leading /" errror
