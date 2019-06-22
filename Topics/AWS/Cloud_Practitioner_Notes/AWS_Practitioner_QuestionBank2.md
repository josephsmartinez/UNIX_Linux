# Amazon Web Services Random Question Bank 2

Which of the following can be used to manage identities in AWS.

> IAM

The AWS Documentation mentions the following AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources. You use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources. For more information on AWS IAM, please refer to the below URL: https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html

----------------

Which of the following are attributes to the costing for using the Simple Storage Service. Choose 2 answers from the options given below

> The total size in GB of all objects stored, The storage class used for the objects stored

AWS Doc shows a snapshot of the costing calculator for AWS S3 For the link to costing for AWS S3, please visit the below link: http://calculator.s3.amazonaws.com/index.html

----------------

Which of the following options of AWS RDS allows for AWS to failover to a secondary database in case the primary one fails.

> AWS Multi-AZ

The AWS Documentation mentions the following Amazon RDS Multi-AZ deployments provide enhanced availability and durability for Database (DB) Instances, making them a natural fit for production database workloads. When you provision a Multi-AZ DB Instance, Amazon RDS automatically creates a primary DB Instance and synchronously replicates the data to a standby instance in a different Availability Zone (AZ). Each AZ runs on its own physically distinct, independent infrastructure, and is engineered to be highly reliable. In case of an infrastructure failure, Amazon RDS performs an automatic failover to the standby (or to a read replica in the case of Amazon Aurora), so that you can resume database operations as soon as the failover is complete.  For more information on AWS RDS Multi-AZ visit the below link: https://aws.amazon.com/rds/details/multi-az/

----------------

Which of the following AWS services should you use to migrate an existing database to AWS?

> AWS DMS

----------------

Which of the following is not a supported database in the AWS RDS service.

> DB2

The AWS Documentation mentions the following Amazon RDS is available on several database instance types - optimized for memory, performance or I/O - and provides you with six familiar database engines to choose from, including Amazon Aurora, PostgreSQL, MySQL, MariaDB, Oracle, and Microsoft SQL Server.  For more information on AWS RDS, please refer to the below URL: https://aws.amazon.com/rds/

----------------

Which of the following security features is associated with a Subnet in a VPC to protect against Incoming traffic requests.

> NACL

The AWS Documentation mentions the following A network access control list (ACL) is an optional layer of security for your VPC that acts as a firewall for controlling traffic in and out of one or more subnets. You might set up network ACLs with rules similar to your security groups in order to add an additional layer of security to your VPC.  For more information on Network ACL’s, please visit the URL: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html

----------------

Which AWS service allows for distribution of incoming application traffic across multiple EC2 instances?

> ELB

The AWS Documentation mentions the following Elastic Load Balancing distributes incoming application traffic across multiple EC2 instances, in multiple Availability Zones. This increases the fault tolerance of your applications. For more information on AWS ELB, please refer to the below URL: https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html

----------------

There is a requirement to move 10 TB data warehouse to the AWS cloud. Which of the following is an ideal service which can be used to move this amount of data to the AWS Cloud.

> Amazon Snowball

The AWS Documentation mentions the following AWS Snowball is a service that accelerates transferring large amounts of data into and out of AWS using physical storage appliances, bypassing the Internet. Each AWS Snowball appliance type can transport data at faster-than internet speeds. This transport is done by shipping the data in the appliances through a regional carrier. The appliances are rugged shipping containers, complete with E Ink shipping labels. For more information on AWS Snowball, please refer to the below URL: https://docs.aws.amazon.com/snowball/latest/ug/whatissnowball.html

----------------

A company does not want to manage their database. Which of the following services is a fully managed NoSQL database provided by AWS.

> DynamoDB

DynamoDB is a fully managed NoSQL offering provided by AWS. It is now available in most regions for users to consume. For more information on AWS DynamoDB visit the below link: https://aws.amazon.com/dynamodb/

----------------

There is a requirement hosting a set of servers in the Cloud for a short period of 3 months. Which of the following types of instances should be chosen to be cost effective.

> On-Demand

Since the requirement is just for 3 months, then the best cost effective option is to use On-Demand Instances. For more information on AWS On-Demand Instances pricing, please visit the link: https://aws.amazon.com/ec2/pricing/on-demand/

----------------

Which of the following can be used to protect against Ddos attacks. Choose 2 answers from the options given below

> AWS Shield, AWS Shield Advanved

The AWS Documentation mentions the following AWS Shield - All AWS customers benefit from the automatic protections of AWS Shield Standard, at no additional charge. AWS Shield Standard defends against most common, frequently occurring network and transport layer DDoS attacks that target your web site or applications AWS Shield Advanced - For higher levels of protection against attacks targeting your web applications running on Amazon EC2, Elastic Load Balancing (ELB), CloudFront, and Route 53 resources, you can subscribe to AWS Shield Advanced. AWS Shield Advanced provides expanded DDoS attack protection for these resources. For more information on AWS Shield, please refer to the below URL: https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html

----------------

What are the four levels of AWS Premium Support?

> Basic, Developer, Business, Enterprise

AWS Doc shows different support levels available For more information on AWS Support plans visit the below link: https://aws.amazon.com/premiumsupport/compare-plans/

----------------

Which AWS service uses Edge Locations for content caching?

> AWS Cloudfront

The AWS Documentation mentions the following Amazon CloudFront employs a global network of edge locations and regional edge caches that cache copies of your content close to your viewers. Amazon CloudFront ensures that end-user requests are served by the closest edge location.  For more information on AWS Cloudfront, please visit the URL: https://aws.amazon.com/cloudfront/details/

----------------

What is the service provided by AWS that lets you host Domain Name systems? Please choose on answer from the options below.

> Route 53

Amazon Route 53 provides highly available and scalable Domain Name System (DNS), domain name registration, and health-checking web services. It is designed to give developers and businesses an extremely reliable and cost effective way to route end users to Internet applications by translating names like example.com into the numeric IP addresses, such as 192.0.2.1, that computers use to connect to each other.  For more information on Route 53, please visit the URL: https://aws.amazon.com/route53/faqs/

----------------

What service from AWS can help manage the costs for all resources in AWS?

> Cost Explorer

The AWS Documentation mentions the following Cost Explorer is a free tool that you can use to view your costs. You can view your costs as either a cash-based view (costs are recorded when cash is received or paid) with unblended costs or as an accrual-based view (costs are recorded when income is earned or costs are incurred). You can view data for up to the last 13 months, forecast how much you are likely to spend for the next three months, and get recommendations for what Reserved Instances to purchase For more information on AWS Cost Explorer visit the below link: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-explorer-what-is.html

----------------

Which of the following are right principles when designing cloud based systems. Choose 2 answers from the options below

> Assume everything will fail, Build loosely-coupled components

Always build components which are loosely coupled. This is so that even if one component does fail, the entire system does not fail. Also if you build with the assumption that everything will fail, then you will ensure that the right measures are taken to build a highly available and fault tolerant system. For more information on a well architected framework, please refer to the below URL: https://d0.awsstatic.com/whitepapers/architecture/AWS_Well-Architected_Framework.pdf

----------------

Which of the following is the amount of storage that can be stored in the Simple Storage service?

> Virtually unlimited stroage

The AWS Documentation mentions the following Amazon S3 provides a simple web service interface that you can use to store and retrieve any amount of data, at any time, from anywhere on the web For more information on AWS S3, please refer to the below URL: https://aws.amazon.com/s3/faqs/

----------------

You are exploring what services AWS has off-hand. You have a large number of data sets that need to be processed. Which of the following services can help fulfil this requirement.

> EMR

The AWS Documentation mentions the following Amazon EMR helps you analyze and process vast amounts of data by distributing the computational work across a cluster of virtual servers running in the AWS Cloud. The cluster is managed using an open-source framework called Hadoop. Amazon EMR lets you focus on crunching or analyzing your data without having to worry about time-consuming setup, management, and tuning of Hadoop clusters or the compute capacity they rely on. For more information on AWS EMR, please refer to the below URL: http://docs.amazonaws.cn/en_us/aws/latest/userguide/emr.html

----------------

You want to take a snapshot of an EC2 Instance and create a new instance out of it. In AWS what is this snapshot equivalent to?

> AMI

The AWS Documentation mentions the following An Amazon Machine Image (AMI) provides the information required to launch an instance, which is a virtual server in the cloud. You specify an AMI when you launch an instance, and you can launch as many instances from the AMI as you need. You can also launch instances from as many different AMIs as you need. For more information on Amazon Machine Images, please refer to the following link: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html

----------------

Which of the following concepts is used when you want to manage the bills for multiple accounts under one master account

> Consoldating Billing

The AWS Documentation mentions the following You can use the consolidated billing feature in AWS Organizations to consolidate payment for multiple AWS accounts or multiple AISPL accounts. With consolidated billing, you can see a combined view of AWS charges incurred by all of your accounts. You also can get a cost report for each member account that is associated with your master account. Consolidated billing is offered at no additional charge For more information on Consolidated billing, please refer to the below URL: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/consolidated-billing.html

----------------

What is the key difference between an availability zone and an edge location?

> An availability zone is an Amazon resource within an AWS region, whereas an edge location will deliver cached content to the closest location to reduce latency (CDN)

In AWS , there are regions with each region separated in a separate geographic area. Each region has multiple, isolated locations known as Availability Zones. An availability zone is used to host resources in a specific region. For more information on Regions and availability zone, please visit the URL: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html

----------------

In AWS, which security aspects are the customer’s responsibility? Choose 4 answers from the options given below

> Patch management on the EC2 instance's operating system, Life-cycle management of IAM credentials, Encryption of EBS volumes, Security Group and ACL settings

AWS Doc shows the snapshot of the AWS Shared Responsibility Model For more information on the Shared Responsibility Model, please refer to the below URL: https://aws.amazon.com/compliance/shared-responsibility-model/

----------------

Which of the following is a best practice when working with permissions in AWS.

> Ensure the least privolege access is used

The AWS Documentation mentions the following When you create IAM policies, follow the standard security advice of granting least privilege—that is, granting only the permissions required to perform a task. Determine what users need to do and then craft policies for them that let the users perform only those tasks. For more information on AWS IAM Best practices, please refer to the below URL: https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html

----------------

When working on the costing for on-demand EC2 instances , which are the following are attributes which determine the costing of the EC2 Instance. Choose 3 answers from the options given below

> Region, AMI Type, Instance Types

If you see the snapshot from the EC2 on-demand pricing page, you can see the different components that make up the pricing For more information on AWS Ec2 On-demand pricing, please refer to the below URL: https://aws.amazon.com/ec2/pricing/on-demand/

----------------

Which of the following services helps provide a connection from on-premise infrastructure to resources hosted in the AWS Cloud. Choose 2 answers from the options given below

> AWS Direct Connect

The AWS Documentation mentions the followingAWS Direct Connect makes it easy to establish a dedicated network connection from your premises to AWS. Using AWS Direct Connect, you can establish private connectivity between AWS and your datacenter, office, or colocation environment, which in many cases can reduce your network costs, increase bandwidth throughput, and provide a more consistent network experience than Internet-based connections.You can connect your VPC to remote networks by using a VPN connection. For more information on AWS Direct Connect, please visit the link:https://aws.amazon.com/directconnect/?p=tileFor more information on AWS VPN, please visit the link:https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpn-connections.html

----------------

What is the ability provided by AWS to enable very fast, easy, and secure transfers of files over long distances between your client and your Amazon S3 bucket.

> S3 Transfer Acceleration

The AWS Documentation mentions the following Amazon S3 Transfer Acceleration enables fast, easy, and secure transfers of files over long distances between your client and an S3 bucket. Transfer Acceleration takes advantage of Amazon CloudFront’s globally distributed edge locations. As the data arrives at an edge location, data is routed to Amazon S3 over an optimized network path. For more information on AWS S3 transfer acceleration, please refer to the below URL: https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html

----------------

A company is deploying a new two-tier web application in AWS. The company wants to store their most frequently used data so that the response time for the application is improved. Which AWS service provides the solution for the company’s requirements?

> Amazon ElastiCache

Amazon ElastiCache is a web service that makes it easy to deploy, operate, and scale an in-memory data store or cache in the cloud. The service improves the performance of web applications by allowing you to retrieve information from fast, managed, in-memory data stores, instead of relying entirely on slower disk-based databases For more information on Elastic cache, please visit the link: https://aws.amazon.com/elasticache/

----------------

Which of the following is not a disaster recovery deployment technique.

> Single Site

The snapshot from the AWS documentation shows the different disaster recovery techniques For more information on Disaster recovery techniques, please refer to the below URL: https://aws.amazon.com/blogs/aws/new-whitepaper-use-aws-for-disaster-recovery/

----------------

You have a Web application hosted in an EC2 Instance that needs to send notifications based on events. Which of the below services can assist in sending notifications

> AWS SNS

The AWS Documentation mentions the following Amazon Simple Notification Service (Amazon SNS) is a web service that enables applications, end-users, and devices to instantly send and receive notifications from the cloud. For more information on AWS SNS, please visit the URL: https://aws.amazon.com/documentation/sns/

----------------

What are characteristics of Amazon S3? Choose 2 answers from the options given below.

> S3 allows you to store unlimited amounts of data, Objects are dirently accessible via a URL

Each object does have a limitation in S3, but you can store virtually unlimited amounts of data. Also each object gets a directly accessible URL For more information on AWS S3, please refer to the below URL: https://aws.amazon.com/s3/faqs/

----------------

What does Amazon EC2 provide?

> Virtual server in the cloud

Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers. Amazon EC2’s simple web service interface allows you to obtain and configure capacity with minimal friction. It provides you with complete control of your computing resources and lets you run on Amazon’s proven computing environment. Amazon EC2 reduces the time required to obtain and boot new server instances to minutes, allowing you to quickly scale capacity, both up and down, as your computing requirements change. For more information on EC2 instances visit the below link: https://aws.amazon.com/ec2/

----------------

When using On-Demand instances in AWS, which of the following is a false statement when it comes to the costing for the Instance.

> You pay any termination fees

You don’t need to pay any termination fees when it comes to Ec2 Instances For more information on AWS Ec2 On-demand pricing, please refer to the below URL: https://aws.amazon.com/ec2/pricing/on-demand/

----------------

What is the service provided by AWS that allows developers to easily deploy and manage applications on the cloud? Please choose on answer from the options below.

> Elastic Beanstalk

AWS Elastic Beanstalk makes it even easier for developers to quickly deploy and manage applications in the AWS Cloud. Developers simply upload their application, and Elastic Beanstalk automatically handles the deployment details of capacity provisioning, load balancing, auto-scaling, and application health monitoring. For more information on Elastic Beanstalk, please visit the URL: https://aws.amazon.com/elasticbeanstalk/faqs/

----------------

What is the concept of an AWS region?

> It is a geographical area divided into Availbility Zones

A region is a geographical area divided into Availability Zones. Each region contains at least two Availability Zones. For more information on AWS regions and availability zones, please refer to the below URL: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html

----------------

AWS provides a storage option known as Amazon Glacier. What is this AWS service designed for. Please specify 2 correct options.

> Data Archives, Infrequently accessed data

Amazon Glacier is an extremely low-cost storage service that provides secure, durable, and flexible storage for data backup and archival. So Amazon glacier is used for Infrequently accessed data and Data archives. For more information on Amazon Glacier, please refer to the below URL: https://aws.amazon.com/glacier/

----------------

Which of the following is a serverless compute offering from AWS?

> AWS Lamda

The AWS Documentation mentions the following AWS Lambda is a compute service that lets you run code without provisioning or managing servers. AWS Lambda executes your code only when needed and scales automatically, from a few requests per day to thousands per second For more information on AWS Lambda, please refer to the below URL: https://docs.aws.amazon.com/lambda/latest/dg/welcome.html

----------------

What AWS service has built-in DDoS mitigation?

> CloudFront

The AWS Documentation mentions the following CloudFront also integrates with AWS WAF, a web application firewall that helps protect web applications from common web exploits, and AWS Shield, a managed DDoS protection service that safeguards web applications running on AWS.  For more information on AWS Cloudfront, please refer to the below URL: https://aws.amazon.com/cloudfront/details/

----------------

Which of the following services helps in governance, compliance, and risk auditing in AWS.

> AWS Cloudtrail

The AWS Documentation mentions the following AWS CloudTrail is a service that enables governance, compliance, operational auditing, and risk auditing of your AWS account. With CloudTrail, you can log, continuously monitor, and retain account activity related to actions across your AWS infrastructure. CloudTrail provides event history of your AWS account activity, including actions taken through the AWS Management Console, AWS SDKs, command line tools, and other AWS services. This event history simplifies security analysis, resource change tracking, and troubleshooting. For more information on AWS Cloudtrail, please refer to the below URL: https://aws.amazon.com/cloudtrail/

----------------

What acts as a firewall that controls the traffic allowed to reach one or more instances?

> Security Group

A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. When you launch an instance in a VPC, you can assign the instance to up to five security groups. Security groups act at the instance level. Below is an example of a security group which has inbound rules. The below rule states that users can only SSH into EC2 instances that are attached to this security group. For more information on AWS Security Groups, please visit the URL: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html

----------------

Which of the following is AWS services allows you to build a data warehouse on the cloud.

> AWS Redshift

The AWS Documentation mentions the following Amazon Redshift is a fully managed, petabyte-scale data warehouse service in the cloud. You can start with just a few hundred gigabytes of data and scale to a petabyte or more. This enables you to use your data to acquire new insights for your business and customers. For more information on AWS Redshift, please refer to the below URL: https://docs.aws.amazon.com/redshift/latest/mgmt/welcome.html

----------------

What is the AWS service provided which provides a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability.

> DynamoDB

DynamoDB is a fully managed NoSQL offering provided by AWS. It is now available in most regions for users to consume. The link provides the full details on the product For more information on AWS DynamoDB, please refer to the below URL: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html

----------------

Which of the following storage mechanisms can be used to store messages effectively which can be used across distributed systems.

> Amazon SQS

The AWS Documentation mentions the following on AWS SQS Amazon Simple Queue Service (Amazon SQS) offers a reliable, highly-scalable hosted queue for storing messages as they travel between applications or microservices. It moves data between distributed application components and helps you decouple these components For more information on AWS SQS, please refer to the below URL: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/Welcome.html

----------------

You have a distributed application that periodically processes large volumes of data across multiple Amazon EC2 Instances. The application is designed to recover gracefully from Amazon EC2 instance failures. You are required to accomplish this task in the most cost-effective way. Which of the following will meet your requirements?

> On-Demand Instances

When you think of cost effectiveness, you can either have to choose Spot or Reserved instances. Now when you have a regular processing job, the best is to use spot instances and since your application is designed recover gracefully from Amazon EC2 instance failures, then even if you lose the Spot instance , there is no issue because your application can recover. For more information on spot instances, please visit the URL: https://aws.amazon.com/ec2/spot/

----------------

In AWS billing what option can be used to ensure costs can be reduced if you have multiple accounts

> Combind Billing

You can use the Consolidated Billing feature to consolidate payment for multiple Amazon Web Services (AWS) accounts or multiple Amazon International Services Pvt. Ltd (AISPL) accounts within your organization by designating one of them to be the payer account. With Consolidated Billing, you can see a combined view of AWS charges incurred by all accounts, as well as get a cost report for each individual account associated with your payer account For more information on consolidated billing, please visit the URL: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/consolidated-billing.html

----------------

If you wanted to take a backup of an EBS Volume, what would you do?

> Create an EBS snapshot

The AWS Documentation mentions the following You can back up the data on your Amazon EBS volumes to Amazon S3 by taking point-in-time snapshots. For more information on EBS Snapshots, please visit the link: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html

----------------

Which of the following items allow an application deployed on an EC2 instance to write data to S3 in a secure manner

> AWS IAM Roles

The AWS Documentation mentions the following An IAM role is similar to a user, in that it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it For more information on IAM Roles visit the below link: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html

----------------

You are planning to serve a web application on the AWS Platform by using EC2 Instances. Which of the below principles would you adopt to ensure that even if some of the EC2 Instances crashes , you still have a working application

> Using a fault tolerant system

A fault tolerant system is one that ensures that the entire system works as expected even there are issues. For more information on designing fault tolerant applications in AWS, please refer to the below URL: https://aws.amazon.com/whitepapers/designing-fault-tolerant-applications/

----------------

Which of the following AWS services can assist you with cost optimization?

> AWS Trusted Advisor

The AWS Documentation mentions the following An online resource to help you reduce cost, increase performance, and improve security by optimizing your AWS environment, Trusted Advisor provides real time guidance to help you provision your resources following AWS best practices For more information on the Trusted Advisor, please refer to the below URL: https://aws.amazon.com/premiumsupport/trustedadvisor/

----------------

Which of the following allows you to carve out a portion of the AWS Cloud

> AWS VPC

The AWS Documentation mentions the following Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS. For more information on AWS VPC, please refer to the below URL: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Introduction.html

----------------

Which of the following is AWS managed database service provides processing power that is up to 5X faster than a traditional MySQL database.

> Aurora

The AWS Documentation mentions the following Amazon Aurora (Aurora) is a fully managed, MySQL- and PostgreSQL-compatible, relational database engine. It combines the speed and reliability of high-end commercial databases with the simplicity and cost-effectiveness of open-source databases. It delivers up to five times the throughput of MySQL and up to three times the throughput of PostgreSQL without requiring changes to most of your existing applications. For more information on AWS Aurora, please refer to the below URL: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Overview.html

----------------

A company is deploying a 2-tier, highly available web application to AWS. Which service provides durable storage for static content while utilizing lower Overall CPU resources for the web tier?

> Amazon S3

Amazon S3 is the default storage service that should be considered for companies. If provides durable storage for all static content. For more information on AWS S3, please refer to the below URL: https://aws.amazon.com/s3/faqs/

----------------

In order to predict the cost of moving resources from on-premise to the cloud , which of the following can be used

> AWS TCO

The AWS Documentation mentions the following The AWS TCO calculator makes it easy to estimate your savings when comparing the cloud to an on-premises or colocation environment. Use the TCO calculator to get detailed reports and insights into the cost components that make AWS a viable alternative to lower your costs. For more information on the economics of AWS, please refer to the below URL: https://aws.amazon.com/economics/

----------------

You have 2 accounts in your AWS account. One for the Dev and the other for QA. All are part of consolidated billing. The master account has purchase 3 reserved instances. The Dev department is currently using 2 reserved instances. The QA team is planning on using 3 instances which of the same instance type. What is the pricing tier of the instances that can be used by the QA Team?

> One Reserved and 2 on-demand

Since all are a part of consolidating billing, the pricing of reserved instances can be shared by All. And since 2 are already used by the Dev team , another one can be used by the QA team. The rest of the instances can be on-demand instances. For more information on AWS Reserved instances, please refer to the below URL: https://aws.amazon.com/ec2/pricing/reserved-instances/

----------------

What is a document that provides a formal statement of one or more permissions?

> Policy

A policy is a JSON document that specifies what a user can do on AWS. This document consists of·         Actions: what actions you will allow. Each AWS service has its own set of actions.·         Resources: which resources you allow the action on.·         Effect: what the effect will be when the user requests access—either allow or deny.The AWS Documentation mentions the followingA policy is an entity in AWS that, when attached to an identity or resource, defines their permissions. AWS evaluates these policies when a principal, such as a user, makes a request. Permissions in the policies determine whether the request is allowed or deniedFor more information on AWS Policies, please visit the URL:https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html

----------------

A company wants to utilize aws storage. For them low storage cost is paramount, the data is rarely retrieved, and data retrieval times of several hours are acceptable for them. What is the best storage option to use?

> Amazon Glacier

Amazon Glacier is a storage service optimized for infrequently used data, or "cold data." The service provides durable and extremely low-cost storage with security features for data archiving and backup. With Amazon Glacier, you can store your data cost effectively for months, years, or even decades.  For more information on AWS Glacier, please refer to the below URL: https://aws.amazon.com/documentation/glacier/

----------------

A company wants to create standard templates for deployment of their Infrastructure. Which AWS service can be used in this regard? Please choose one option.

> AWS CloudFormation

AWS CloudFormation gives developers and systems administrators an easy way to create and manage a collection of related AWS resources, provisioning and updating them in an orderly and predictable fashion. For more information on Cloudformation, please visit the URL: https://aws.amazon.com/cloudformation/

----------------

Which of the following options would entice a company to use AWS over an on-premises data center? Choose 2 answers from the options given below

> Ability to use resources on demand, Having a highly available infrastruture

The entire advantage of the AWS Cloud or any cloud system is the ability to have a highly available infrastructure and to use resources on demand For more information on advantages on using AWS, please refer to the below URL: https://aws.amazon.com/application-hosting/benefits/

----------------

If you want to develop an application in Java , which of the following tools would you use.

> AWS SDK

The AWS Doc Shows an array of Software development kits are available for AWS For more information on all the tools for AWS, please visit the below link: https://aws.amazon.com/tools/

----------------

What service helps you to aggregate logs from your EC2 instance? Choose one answer from the options below

> Amazon CloudWatch Logs

You can use Amazon CloudWatch Logs to monitor, store, and access your log files from Amazon Elastic Compute Cloud (Amazon EC2) instances, AWS CloudTrail, and other sources. You can then retrieve the associated log data from CloudWatch Log For more information on AWS Cloudwatch logs visit the below link: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html

----------------

Which one of the following features is normally present in all of AWS Support plans

> 24*7 Customer Support

This is given in the AWS Documentation For more information on AWS Support plans, please refer to the below URL: https://aws.amazon.com/premiumsupport/compare-plans/ 

----------------

Which of the below AWS services allows you to base the number of resources on the demand of the application or users.

> AWS Autscaling

The AWS Documentation mentions the following AWS Auto Scaling enables you to configure automatic scaling for the scalable AWS resources for your application in a matter of minutes. AWS Auto Scaling uses the Auto Scaling and Application Auto Scaling services to configure scaling policies for your scalable AWS resources. For more information on AWS Autoscaling, please refer to the below URL: https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html

----------------

You have a mission-critical application which must be globally available at all times. If this is the case, which of the below deployment mechanisms would you employ

> Deployment to multiple Regions

Regions represent different geographic locations and is bets to host your application across multiple regions for disaster recovery For more information on AWS Regions, please refer to the below URL: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html

----------------

Which services allow the customer to retain full administrative privileges of the underlying virtual infrastructure?

> Amazon EC2

All of the other services are all managed by AWS as serverless components. Only you have complete control over the EC2 serviceFor more information on AWS EC2, please refer to the below URL: https://aws.amazon.com/ec2/

----------------

Which of the following are benefits of the AWS's Relational Database Service (RDS)? Choose the 2 correct answers from the options below

> You can resize the capacity accourdingly, Automated pathces and backups

The AWS Documentation mentions the following Amazon Relational Database Service (Amazon RDS) makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching and backups. It frees you to focus on your applications so you can give them the fast performance, high availability, security and compatibility they need. For more information on AWS RDS, please visit the URL: https://aws.amazon.com/rds/

----------------

You want to monitor the CPU utilization of an EC2 resource in AWS. Which of the below services can help in this regard

> AWS inspector

The AWS Documentation mentions the following Amazon CloudWatch is a monitoring service for AWS cloud resources and the applications you run on AWS. You can use Amazon CloudWatch to collect and track metrics, collect and monitor log files, set alarms, and automatically react to changes in your AWS resources. Amazon CloudWatch can monitor AWS resources such as Amazon EC2 instances, Amazon DynamoDB tables, and Amazon RDS DB instances, as well as custom metrics generated by your applications and services, and any log files your applications generate For more information on AWS Cloudwatch, please refer to the below URL: https://aws.amazon.com/cloudwatch/
