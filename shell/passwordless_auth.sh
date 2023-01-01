#!/bin/bash
ips_file_path=$1
read -s -p "enter password for remote access "  pass
cat $ips_file_path| while read line 
do 
 sshpass -p $pass ssh-copy-id rithvik@${line}
done

# INFO:
# It copies the ssh private key to all the remote machines 
# Enable ansible for executing playbooks with passwordless authenication.
