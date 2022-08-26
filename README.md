[![Python application test with Github Actions](https://github.com/ehabhamdy/HousePredictionWebApp_AzurePipelines/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/ehabhamdy/HousePredictionWebApp_AzurePipelines/actions/workflows/pythonapp.yml)

# Overview
This project is done is accordance to the udacity specifications to build a complete CI/CD for a flask based application
that provide a inference endpoint for house price predictions based on the features of the house. The application is 
deployed as a web app on Azure using (Azure App Services). 

## Project Plan
* Trello board for the project:
    https://trello.com/b/5i2rmPGT/housepredictions-of-project-management-template
* Full project plan spreadsheet:
    https://docs.google.com/spreadsheets/d/1fb1SpfHJbU5I71yWouwonHabAM7OO0xeGj4jpk9s6sU/edit?usp=sharing

## Instructions

After cloning the project, you need to perform the following steps to deploy it to azure:
1. Install azure CLI.
2. Login to your azure account `azure login`
3. Deploy the app to Azure App Services: 
`az webapp create -g houseprediction-rg -p house-prediction-service-plan -n house-prediction-app --runtime PYTHON:3.9`
4. For automatic deployment, configure azure DevOps, create a new pipeline and make sure to add a Service Connection
to the deployed Azure App Services app.
5. Make sure to select the pipeline configuration file from the code repository `azure-pipelines.yml`
6. To publish a new release, you need to give your commit a tag for the azure pipeline to trigger a new deployment
Here is an example
`git add .`
`git commit -m "Release 4 implementation"`
`git tag release.4`
`git push`
`git `push origin release.4
7. Once the code is pushed, Github action will trigger the necessary tests and Azure pipeline will perform
a new deployment.

* Architectural Diagram 
<img src="architecture.png" width="800">

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:


* Project running on Azure App Service
<img src="runningapp.png" width="800">


* Project cloned into Azure Cloud Shell
<img src="cloudshell.png" width="800">

* Output of a test run
<img src="appservices.png" width="800">

* Successful deploy of the project in Azure Pipelines. 
<img src="azurepipeline.png" width="800">


* Running Azure App Service from Azure Pipelines automatic deployment
<img src="appservices.png" width="800">

* Successful prediction from deployed flask app in Azure Cloud Shell.
<img src="azureprediction.png" width="800">

* Output of streamed log files from deployed application
<img src="logs.png" width="800">



## Enhancements

<TODO: A short description of how to improve the project in the future>


## Demo

<TODO: Add link Screencast on YouTube>
