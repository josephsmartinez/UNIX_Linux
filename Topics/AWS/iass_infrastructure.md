# Infrastructure

Amazon Elastic Compute Cloud (Amazon EC2)
a web service that provides secure, resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers.

Components:
AMIs, Instance Types, Elastic Block Storage EBS, Ip Addressing, Security Groups, RAM

AMIs:
Community, AWS Marketplace, My AMIs

Instance Types:
Gerneral Purpose, Compute optimized, GPU optimized, Memory Optimized, Storage Optimized

EC2 Buying Options:
On-Demand, Reserved, Spot (Bid)

Amazon EC2 Spot Instances
let you take advantage of unused EC2 capacity in the AWS cloud. Spot Instances are available at up to a 90% discount compared to On-Demand prices.

Amazon EC2 Spot Instances
take advantage of unused EC2 capacity in the AWS cloud. Spot Instances are available at up to a 90% discount compared to On-Demand prices. You can use Spot Instances for various stateless, fault-tolerant, or flexible applications such as big data, containerized workloads, CI/CD, web servers, high-performance computing (HPC), and other test & development workloads.

Spot Fleet Works
attempts to launch the number of Spot Instances and On-Demand Instances to meet the target capacity that you specified in the Spot Fleet request. The request for Spot Instances is fulfilled if there is available capacity and the maximum price you specified in the request exceeds the current Spot price.

Auto Scaling
monitors your applications and automatically adjusts capacity to maintain steady, predictable performance at the lowest possible cost. Using AWS Auto Scaling, it’s easy to setup application scaling for multiple resources across multiple services in minutes. The service provides a simple, powerful user interface that lets you build scaling plans for resources including Amazon EC2 instances and Spot Fleets, Amazon ECS tasks, Amazon DynamoDB tables and indexes, and Amazon Aurora Replicas.
