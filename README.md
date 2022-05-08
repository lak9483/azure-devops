# Overview

[![Python application test with Github Actions](https://github.com/lak9483/azure-devops/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/lak9483/azure-devops/actions/workflows/pythonapp.yml)

## Overview of the project
This project demonstrates helps to perform continuous delivery for a Python-based machine learning application using the Flask web framework
The code is stored in Github and any changes triggers the github build actions and the pipeline which is created in Azuredevops.
The app is deployed in Azure app service.

## Project Plan

* A link to a Trello board for the project:
https://trello.com/invite/b/gaFIRkDP/6b8cfaa9b9fff086de0832ed3a911853/udacity-project

* A link to a spreadsheet that includes the original and final project plan>
https://github.com/lak9483/azure-devops/blob/main/project-management-template.xlsx
## Instructions

On running python project:
->Open azure cloud shell terminal.
To run makefile:
->Navigate to the proj directory(azure-devops) and run
  make all. This will install all the dependencies
->start the application
  python app.py
->To check the prediction output
  ./make_prediction.sh
(All the scrennshots are attached in below steps)

To deploy the webapp service
az webapp up --name flaskapp562022 --resource-group Azuredevops --runtime "PYTHON:3.7"

* Architectural Diagram (Shows how key parts of the system work)
![ArchitecturalDiagram](/Screenshots/ArchitecturalDiagram.png)

Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service
use the below commad to get the ssh key
ssh-keygen -t rsa
![SSHKey](/Screenshots/SSHKey.png)

* Project cloned into Azure Cloud Shell
Run the command git clone git@github.com:lak9483/azure-devops.git
![Clone](/Screenshots/GitClone.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![Test](/Screenshots/RunTest.png)

Configuring in github action
![GithubAction](/Screenshots/GithubAction.png)

Create VM under the resouce group
![CreateVM](/Screenshots/CreateVM.png)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
Deploy the app with this command az webapp up --name flaskapp562022 --resource-group Azuredevops --runtime "PYTHON:3.7"

![AppDeployment](/Screenshots/AppDeployment.png)

* Running Azure App Service from Azure Pipelines automatic deployment
Succefull run of pipeline
![Pipeline](/Screenshots/Pipeline.png)

* Application deployed successfully 
![AppDeployment](/Screenshots/WebApp.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```
![Prediction](/Screenshots/Prediction.png)

* Output of streamed log files from deployed application

![LogFile](/Screenshots/LogFile.png)

* Loadtest screenshot
![Load](/Screenshots/Linttest.png)

With all the steps screenshots are added in the Word document

## Enhancements

The housing.csv file can be taken from the database and can have huge amount of data

## Demo 
Link to youtube
https://youtu.be/l7zC_f0ZPzY


