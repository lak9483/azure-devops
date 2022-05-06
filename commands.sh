ssh-keygen -t rsa
git clone git@github.com:lak9483/azure-devops.git
az vm create \
--resource-group Azuredevops \
--name myLinuxVM \
--image UbuntuLTS \
--generate-ssh-keys \
--admin-username azureuser \
--public-ip-sku Standard
ssh -i ~/.ssh/id_rsa azureuser@20.81.60.196
az webapp up --name flaskapp562022 --resource-group Azuredevops --runtime "PYTHON:3.7"
az webapp log tail
# Download the agent
curl -O https://vstsagentpackage.azureedge.net/agent/2.202.1/vsts-agent-linux-x64-2.202.1.tar.gz
# Create the agent
mkdir myagent && cd myagent
tar zxvf ../vsts-agent-linux-x64-2.202.1.tar.gz
# Configure the agent
./config.sh
#Finish setup
sudo ./svc.sh install
sudo ./svc.sh start