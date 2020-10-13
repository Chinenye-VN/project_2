# QAC SFIA2 Project

This application is a simple [Flask application](https://flask.palletsprojects.com/en/1.1.x/quickstart/#a-minimal-application), ready to be deployed, for your SFIA2 project.

#### jira
https://cvn1.atlassian.net/secure/RapidBoard.jspa?rapidView=2&projectKey=PD&view=planning.nodetail&selectedIssue=PD-19&issueLimit=100&atlOrigin=eyJpIjoiNzA5ZTVmOGRkN2M4NDcyZWI2OGRmNWVkNjczOGEwM2YiLCJwIjoiaiJ9

## Brief

The application must:

- Be deployed to a **Virtual Machine for testing**
- Be deployed in a **managed Kubernetes Cluster for production**
- Make use of a **managed Database solution**

The aim of this project was to deploy a flask application whereby we configure different tools that would enable us to have an automated system thst would enable the application deployment. For this project I used docker-compose and docker to spin images that would be containerised. 

#### My CI-Pipeline: 
I cloned my git repositioy onto my local machine and configured terraform files to spin up an EC2 machine and RDS instances on the AWS cloud provider. This EC2 machine would be my jenkins machine where I would run my Jenkins pipeline.I then used Anisible, which is is an open-source software to run a playbook to install and set up Jenkins on the EC2 I spun up. I configured the jenkinsfile so that it could SSH onto the test machine that I set up on the AWS console. This was done in order to run a test on the backend and frontend services, which was tested through the jenkins pipeline and passed. My next step would be to then find a way to checkout my develop branch to deploy the application by the Kubernetes cluster.

### Risks
1. Lack of data security and someone can hack into the database -> solution: Ensuring the enviroment variables are stored in a secure and restricted folder
2. The server can have too much inbound traffic -> Solution: Setting up loadbalancers in the kubernetes cluster


### Running a Flask Application

![app-diagram](https://i.imgur.com/wnbDazy.png)

## Testing

##### *Frontend and Backend Testing*

![frontend](https://user-images.githubusercontent.com/67292767/95806474-a63ad780-0cff-11eb-9bbc-99e037ca553a.png)
![backend](https://user-images.githubusercontent.com/67292767/95806467-a20eba00-0cff-11eb-9d7a-c0a423fab09f.png)
![Jenkins](https://user-images.githubusercontent.com/67292767/95808380-3da22980-0d04-11eb-9427-13d3955ff4cb.png)

## Infrastructure

The **Minimum Viable Product** for this project should at least demonstrate the following infrastructure diagram:

![mvp-diagram](https://i.imgur.com/i5qfOas.png)
