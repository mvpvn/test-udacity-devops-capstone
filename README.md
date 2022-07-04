# Udacity AWS Devops Nano-degree Capstone Project

## Prerequisites
* An AWS profile should exist in `~/.aws/credentials` called `udacity`.

## Setup
Run the following to configure the AWS account:

```bash
./aws/create-network.sh
./aws/create-eks.sh
```

## Configure Circle CI environment variables
These variables can be retieved from Udacity 
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_SESSION_TOKEN
```

## Clean up
To tear down the AWS account run the follow commands: 

```bash
./aws/delete.sh capstone-eks
./aws/delete.sh capstone-network
```