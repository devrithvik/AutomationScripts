echo $1 | sudo -S apt-get remove docker docker-engine docker.io containerd runc 
echo $1 | sudo -S apt-get update && sudo -S apt-get upgrade -y
echo $1 | sudo -S apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo $1 | sudo -S add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo $1 | sudo -S apt-get update
echo $1 | sudo -S apt-get install docker-ce docker-ce-cli containerd.io -y
echo $1 | sudo -S systemctl restart docker && sudo -S systemctl enable docker
group=$(cat /etc/group |grep docker |cut -d ":" -f1)
if [ $group!="docker" ]
then 
echo $1 |sudo -S groupadd docker
fi
#below command only works when we source our terminal 
echo $1 | sudo -S usermod -aG docker $USER    
echo $1 | sudo -S systemctl restart docker && sudo -S systemctl enable docker
