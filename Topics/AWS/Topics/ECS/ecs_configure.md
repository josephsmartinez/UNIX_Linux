# Getting Started with Amazon Elastic Container Service

Linux
> sudo curl -o /usr/local/bin/ecs-cli https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-linux-amd64-latest

Mac
sudo curl -o /usr/local/bin/ecs-cli https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-darwin-amd64-latest



> ecs-cli configure profile --profile-name profile_name --access-key $AWS_ACCESS_KEY_ID --secret-key $AWS_SECRET_ACCESS_KEY

Resources:

Installing the Amazon ECS CLI
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html

Tutorial: Creating a Cluster with a Fargate Task Using the Amazon ECS CLI
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-cli-tutorial-fargate.html

Amazon ECS Command Line Reference

- Amazon Elastic Container Service Developer Guide to set this as the default configuration and profile.

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_reference.html