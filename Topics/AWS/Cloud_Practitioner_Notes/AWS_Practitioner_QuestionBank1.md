# Amazon Web Services Random Question Bank 1

- Which of the below cannot be used to get data onto Amazon Glacier.

> AWS Console

Note that the AWS Console cannot be used to upload data onto Glacier. The console can only be used to create a Glacier vault which can be used to upload the data. For more information on uploading data onto Glacier, please refer to the following Link: https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html

----------------

- A company currently has an application which consist of a .Net layer which connects to a MySQL database. They now want to move this application onto AWS. They want to make use of all AWS features such as high availability and automated backups. Which of the following would be an ideal database in AWS to migrate to for this requirement.

> Aurora

The AWS Documentation mentions the following Amazon Aurora (Aurora) is a fully managed, MySQL- and PostgreSQL-compatible, relational database engine. It combines the speed and reliability of high-end commercial databases with the simplicity and cost-effectiveness of open-source databases. It delivers up to five times the throughput of MySQL and up to three times the throughput of PostgreSQL without requiring changes to most of your existing applications. For more information on Amazon Aurora, please refer to the below URL: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Overview.html

Note that the AWS Console cannot be used to upload data onto Glacier. The console can only be used to create a Glacier vault which can be used to upload the data. For more information on uploading data onto Glacier, please refer to the following Link: https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html

----------------

- By default who from the below roles has complete administrative control over all resources in the respective AWS account?

> AWS Account Owner

The entire of control of data within an AWS account is with the Account Owner. For more information on AWS Account identifiers, please refer to the below URL: http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html

----------------

- Which of the following storage options provides the option of Lifecycle policies that can be used to move objects to archive storage.

> AWS S3

The AWS Documentation mentions the followingLifecycle configuration enables you to specify the lifecycle management of objects in a bucket. The configuration is a set of one or more rules, where each rule defines an action for Amazon S3 to apply to a group of objects. These actions can be classified as follows:

· Transition actions, In which you define when objects transition to another storage class. For example, you may choose to transition objects to the STANDARD_IA (IA, for infrequent access) storage class 30 days after creation, or archive objects to the GLACIER storage class one year after creation.

· Expiration actions, In which you specify when the objects expire. Then Amazon S3 deletes the expired objects on your behalf. For more information on AWS Object Lifecycle management, please visit the Link:https://aws.amazon.com/s3/

----------------

- A company is deploying a two-tier, highly available web application to AWS. The application needs a storage layer to store artefacts such as photos and videos. Which of the following services can be used as the underlying storage mechanism.

> Amazon S3

Amazon S3 is the default storage service that should be considered for companies. If provides durable storage for all static content. For more information on AWS S3, please visit the Link: https://aws.amazon.com/s3/

----------------

- Which of the following service is most useful when a Disaster Recovery method is triggered in AWS.

> Amazon Route 53

Rouet53 is a domain name system service by AWS. When a Disaster does occur , it can be easy to switch to secondary sites using the Route53 service. The AWS Documentation additionally mentions the following Amazon Route 53 is a highly available and scalable cloud Domain Name System (DNS) web service. It is designed to give developers and businesses an extremely reliable and cost effective way to route end users to Internet applications by translating names like www.example.com into the numeric IP addresses like 192.0.2.1 that computers use to connect to each other. Amazon Route 53 is fully compliant with IPv6 as well For more information on AWS Route53, please refer to the below URL: https://aws.amazon.com/route53/

----------------

- Which of the following storage options is best when you want to store archive data?

> Amazon Glacier

The AWS Documentation mentions the following Amazon Glacier is a secure, durable, and extremely low-cost cloud storage service for data archeiving and long-term backup. It is designed to deliver 99.999999999% durability, and provides comprehensive security and compliance capabilities that can help meet even the most stringent regulatory requirements. For more information on Amazon Glacier, please visit the Link: https://aws.amazon.com/glacier/

----------------

- Your company currently uses VM Templates to spin up virtual machines on their on-premise infrastructure. Which of the following can be used in a similar way to spin up EC2 instances on the AWS Cloud.

> Amazom Machines Images

The AWS Documentation mentions the following An Amazon Machine Image (AMI) provides the information required to launch an instance, which is a virtual server in the cloud. You specify an AMI when you launch an instance, and you can launch as many instances from the AMI as you need. You can also launch instances from as many different AMIs as you need. For more information on Amazon Machine Images, please refer to the following Link: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html

----------------

- When designing a system, you use the principle of design for failure and nothing will fail. Which of the following services/features of AWS can assist in supporting this design principle. Choose 3 answers from the options given below

> Regions, Elastic Load Balancer, Availability Zone

Each AZ is a set of one or more data centers. By deploying your AWS resources to multiple Availability zones , you are designing with failure with mind. So if one AZ were to go down , the other AZs would still be up and running and hence your application would be more fault tolerant. For disaster recovery scenarios , one can move or make resources run in other regions And finally one can use the Elastic Load Balancer to distribute load to multiple backend instances within a particular region. For more information on AWS Regions and AZs, please refer to the below URL: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html

----------------

- Your company is planning to pay for an AWS Support plan. They have the following requirements as far as the support plan goes 24x7 access to Cloud Support Engineers via email, chat & phone. A response time of less than 1 hour for any critical faultsWhich of the following plans will suffice keeping in mind the cost factor.

> Enterprise

The Enterprise support plan has support time less than 15 minutes for Business-critical system down. For more information on the support plans, please refer to the following Link: https://aws.amazon.com/premiumsupport/compare-plans/

----------------

There is a requirement hosting a set of servers in the Cloud for a short period of 6 months. Which of the following types of instances should be chosen to be cost effective.

> On-Demand

Since the requirement is just for 3 months, then the best cost effective option is to use On-Demand Instances. For more information on AWS On-Demand Instances pricing, please visit the Link: https://aws.amazon.com/ec2/pricing/on-demand/

----------------

When working with the AWS Cloud which of the following are headaches you dont need to worry about. Choose 2 answers from the options given below.

> No Upfront Cost, Having no need to worry about security

With AWS , some of the benefits you have is the Pay as you go model and not having the need to pay upfront for using AWS resources. For more information on some of the benefits of moving to the AWS Cloud , please visit the Link: https://aws.amazon.com/application-hosting/benefits/

----------------

Which of the following terms relate to Creating systems that scale to the required capacity based on changes in demand

> Elasticity

The concept of Elasticity is the means of an application having the ability to scale up and scale down based on demand. An example of such a service is the Autoscaling service For more information on AWS Autoscaling service, please refer to the below URL: https://aws.amazon.com/autoscaling/

----------------

When giving permission to users via the AWS Identity and Access Management tool , which of the following principles should be applied when granting permissions

> Principle of Least privilege

The principle means giving a user account only those privileges which are essential to perform its intended function. For example, a user account for the sole purpose of creating backups does not need to install software: hence, it has rights only to run backup and backup-related applications.  For more information on principle of least privilege, please refer to the following Link: https://en.wikipedia.org/wiki/Principle_of_least_privilege

----------------

A company wants to have a database hosted on AWS. As much as possible they want to have control over the database itself. Which of the following would be an ideal option for this.

> Hosting the database on an EC2 Instance

If you want a self-managed database, that means you want complete control over the database engine and the underlying infrastructure. In such a case you need to host the database on an EC2 Instance For more information on EC2 Instances, please refer to the below URL: https://aws.amazon.com/ec2/

----------------

Which of the following components of the Cloudfront service can be used to distribute contents to users across the globe.

> Amazon Edge Locations

The AWS documentation mentions the following Amazon CloudFront is a web service that speeds up distribution of your static and dynamic web content, such as .html, .css, .js, and image files, to your users. CloudFront delivers your content through a worldwide network of data centers called edge locations. For more information on Amazon Cloudfront, please refer to the below URL: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html

----------------

You have a set of developers that need to use .Net to call AWS Services. Which of the following tools can be used to achieve this purpose.

> AWS SDK

The AWS SDK can be plugged in for various programming languages. Using the SDK you can then call the required AWS services. For more information on the various tools available in AWS, please refer to the below URL: https://aws.amazon.com/tools/

----------------

Your company is planning to use the AWS Cloud. But there is a management decision that resources need to split department wise. And the decision is tending towards managing multiple AWS accounts. Which of the following would help in effective management and also provide an efficient costing model.

> AWS Organizations

The AWS Documentation mentions the following AWS Organizations offers policy-based management for multiple AWS accounts. With Organizations, you can create groups of accounts and then apply policies to those groups. Organizations enables you to centrally manage policies across multiple accounts, without requiring custom scripts and manual processes. For more information on the AWS Organizations, please refer to the below URL: https://aws.amazon.com/organizations/

----------------

Your company has just started using the resources on the AWS Cloud. They want to get an idea on the costs being incurred so far for the resources being used. How can this be achieved.

> By using the AWS Cost and Usage reports Explore. Here you can see the running forecast cost.

The AWS documentation mentions the following on AWS Cost Reports Cost Explorer is a free tool that you can use to view your costs. You can view data up to the last 13 months, forecast how much you are likely to spend for the next three months, and get recommendations for what Reserved Instances to purchase For more information on AWS Cost Reports, please refer to the below URL: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-explorer-what-is.html

----------------
Which of the following services helps provide a dedicate connection from on-premise infrastructure to resources hosted in the AWS Cloud.

> AWS Direct Connect


The AWS Documentation mentions the following AWS Direct Connect makes it easy to establish a dedicated network connection from your premises to AWS. Using AWS Direct Connect, you can establish private connectivity between AWS and your datacenter, office, or colocation environment, which in many cases can reduce your network costs, increase bandwidth throughput, and provide a more consistent network experience than Internet-based connections. For more information on AWS Direct Connect, please visit the Link: https://aws.amazon.com/directconnect/?p=tile

----------------

You have a set of EC2 Instances hosted on the AWS Cloud. The EC2 Instances are hosting a web application. If you get a DDos attack from the internet which of the following can help in reducing the overall threat to your EC2 Instances. Choose 2 answers from the options given below

> Usage of Network Access Control Lists, Usage of Security Group

The AWS Documentation mentions the following A security group acts as a virtual firewall for your instance to control inbound and outbound traffic A network access control list (ACL) is an optional layer of security for your VPC that acts as a firewall for controlling traffic in and out of one or more subnets.  For more information on Security Groups, please refer to the following Link: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html For more information on Network Access Control Lists, please refer to the following Link: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html

----------------

Which of the following can be used to increase the fault tolerance of an application.

> Deploying resources across multiple Availability Zones

Each AZ is a set of one or more data centers. By deploying your AWS resources to multiple Availability zones , you are designing with failure with mind. So if one AZ were to go down , the other AZs would still be up and running and hence your application would be more fault tolerant. For more information on AWS Regions and AZs, please refer to the below URL: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html

----------------

Your company is planning on moving to the AWS Cloud. Once the movement to the Cloud is complete, they want to ensure that the right security settings are put in place. Which of the below tools can assist from a Security compliance. Choose 2 answers from the options given below.

> AWS Trusted Advisor, AWS Inspector

The AWS documentation mentions the following An online resource to help you reduce cost, increase performance, and improve security by optimizing your AWS environment, Trusted Advisor provides real time guidance to help you provision your resources following AWS best practices The AWS Inspector can inspect EC2 Instances against common threats. For more information on the AWS Trusted Advisor, please refer to the below URL: https://aws.amazon.com/premiumsupport/trustedadvisor/ https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html

----------------

Which of the following can be used as an additional layer of security to using a user name and password when logging into the AWS Console.

> Muiti-Factor Authentication (MFA)

The AWS Documentation mentions the following AWS Multi-Factor Authentication (MFA) is a simple best practice that adds an extra layer of protection on top of your user name and password.  For more information on the AWS MFA, please refer to the below URL: https://aws.amazon.com/iam/details/mfa/

----------------

Which of the following services is a fully managed, petabyte-scale data warehouse service in the AWS cloud

> Amazon RedShift

The AWS documentation mentions the following Amazon Redshift is a fully managed, petabyte-scale data warehouse service in the cloud. You can start with just a few hundred gigabytes of data and scale to a petabyte or more. This enables you to use your data to acquire new insights for your business and customers. For more information on AWS Redshift, please refer to the below URL: http://docs.aws.amazon.com/redshift/latest/mgmt/welcome.html

----------------

Which of the following services can provide a complete audit **trail** of all AWS services used within an account.

> AWS Could Trail Logs

Using Cloudwatch trail , one can monitor all the API activity conducted on all AWS services. The AWS Documentation additionally mentions the following AWS CloudTrail is a service that enables governance, compliance, operational auditing, and risk auditing of your AWS account. With CloudTrail, you can log, continuously monitor, and retain account activity related to actions across your AWS infrastructure. CloudTrail provides event history of your AWS account activity, including actions taken through the AWS Management Console, AWS SDKs, command line tools, and other AWS services. This event history simplifies security analysis, resource change tracking, and troubleshooting. For more information on AWS Cloudtrail, please refer to the below URL: https://aws.amazon.com/cloudtrail/

----------------

You have a devops team in your current organization structure. They are keen to know if there is any service available in AWS which can be used to manage infrastructure as code. Which of the following can be met with such a requirement

> AWS Cloudformation

The AWS documentation mentions the following AWS CloudFormation is a service that helps you model and set up your Amazon Web Services resources so that you can spend less time managing those resources and more time focusing on your applications that run in AWS. You create a template that describes all the AWS resources that you want (like Amazon EC2 instances or Amazon RDS DB instances), and AWS CloudFormation takes care of provisioning and configuring those resources for you. You don't need to individually create and configure AWS resources and figure out what's dependent on what; AWS CloudFormation handles all of that For more information on AWS Cloudformation, please refer to the below URL: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html

----------------

Which of the following is a fully managed NoSQL database service available in AWS.

> AWS DynamoDB

The AWS Documentation mentions the following Amazon DynamoDB is a fast and flexible NoSQL database service for all applications that need consistent, single-digit millisecond latency at any scale. It is a fully managed cloud database and supports both document and key-value store models. Its flexible data model, reliable performance, and automatic scaling of throughput capacity, makes it a great fit for mobile, web, gaming, ad tech, IoT, and many other applications.  For more information on DynamoDB, please visit the Link: https://aws.amazon.com/dynamodb/

----------------

Your company is planning to offload some of the batch processing workloads on to AWS. These jobs can be interrupted and resumed at any time. Which of the following instance types would be the most cost effective to use for this purpose.

> Spot

The AWS documentation mentions the following Spot Instances are a cost-effective choice if you can be flexible about when your applications run and if your applications can be interrupted. For example, Spot Instances are well-suited for data analysis, batch jobs, background processing, and optional tasks For more information on AWS Spot Instances, please refer to the below URL: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances.html

----------------

Which of the following does AWS perform on its behalf for EBS volumes to make it less probe to failure?

> Replication fo the colune in the same Availbilty Zone

When you create an EBS volume in an Availability Zone, it is automatically replicated within that zone to prevent data loss due to failure of any single hardware component For more information on EBS Volumes, please refer to the below URL: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html

----------------

Which of the following initiatives from AWS helps organizations reduce the overall expenditure for IT companies when they host resources on the AWS Cloud?

> They continually reduce the cost of cloud computing

The AWS Documentation mentions the following AWS continues to lower the cost of cloud computing for its customers. In 2014, AWS has reduced the cost of compute by an average of 30%, storage by an average of 51% and relational databases by an average of 28%. AWS continues to drive down the cost of your IT infrastructure For more information on this, please refer to the below URL: https://aws.amazon.com/economics/learn-more/

----------------

Which of the following are services where you dont need to manage the underlying Infrastructure. Choose 2 answers from the options given below.

> Simple Storage Service, DynamoDB

The Simple Storage service and DynamoDB are services where you dont need to manage the underlying infrastructure. For more information on AWS S3 and DynamoDB, please refer to the below URL: https://aws.amazon.com/s3/ https://aws.amazon.com/dynamodb/

----------------

Which of the following services relates the concept of Scaling up resources based on demand

> AutoScaling

The AWS Documentation mentions the following AWS Auto Scaling monitors your applications and automatically adjusts capacity to maintain steady, predictable performance at the lowest possible cost. Using AWS Auto Scaling, its easy to setup application scaling for multiple resources across multiple services in minutes.  For more information on the Auto Scaling service, please refer to the below URL: https://aws.amazon.com/autoscaling/

----------------

Which of the following features of AWS RDS allows for offloading reads of the database.

> Creating Read Replicas

The AWS Documentation mentions the following You can reduce the load on your source DB Instance by routing read queries from your applications to the read replica. Read replicas allow you to elastically scale out beyond the capacity constraints of a single DB instance for read-heavy database workloads. For more information on Read Replicas, please refer to the below URL: https://aws.amazon.com/rds/details/read-replicas/

----------------

Which of the following is the responsibility of AWS according to the **Shared Security Model**? Choose 3 answers from the options given below

> Implemneting service organization crontrol (SOC), Securing Edge Locations, Monitoring physical device security

The responsibility of AWS includes the following: 
1) Securing edge locations 
2) Monitoring physical device security 
3) Implementing service organization Control (SOC) standards For more information on AWS Shared Responsibility Model, 
please refer to the below URL: https://aws.amazon.com/compliance/shared-responsibility-model/

----------------

Which of the following services allows you to analyze EC2 Instances against pre-defined security templates to check for vulnerabilities

> AWS Inspector

The AWS Documentation mentions the following Amazon Inspector enables you to analyze the behavior of your AWS resources and helps you to identify potential security issues. Using Amazon Inspector, you can define a collection of AWS resources that you want to include in an assessment target. You can then create an assessment template and launch a security assessment run of this target. For more information on AWS Inspector, please refer to the below URL: https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html

----------------

Your company wants to move an existing Oracle database to the AWS Cloud. Which of the following services can help facilitate this move.

> AWS Database Migration Service

The AWS Documentation mentions the following AWS Database Migration Service helps you migrate databases to AWS quickly and securely. The source database remains fully operational during the migration, minimizing downtime to applications that rely on the database. The AWS Database Migration Service can migrate your data to and from most widely used commercial and open-source databases. For more information on AWS Database migration, please refer to the below URL: https://aws.amazon.com/dms/

----------------

Which of the following can be used to view one bill when you have multiple AWS Accounts.

> Consolidating Billing

The AWS Documentation mentions the following You can use the consolidated billing feature in AWS Organizations to consolidate payment for multiple AWS accounts or multiple AISPL accounts. With consolidated billing, you can see a combined view of AWS charges incurred by all of your accounts. You also can get a cost report for each member account that is associated with your master account. Consolidated billing is offered at no additional charge For more information on Consolidated billing, please refer to the below URL: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/consolidated-billing.html

----------------

Your company is planning to host resources in the AWS Cloud. They want to use services which can be used to decouple resources hosted on the cloud. Which of the following services can help fulfil this requirement.

> AWS Simple Queue Service (SQS)

----------------

You have an EC2 Instance in development that interacts with the Simple Storage Service. The EC2 Instance is going to be promoted to the production environment. Which of the following features should be used for secure communication between the EC2 Instance and the Simple Storage Service.

> IAM Role

The AWS Documentation mentions the following An IAM role is similar to a user, in that it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it. Also, a role does not have standard long-term credentials (password or access keys) associated with it. Instead, if a user assumes a role, temporary security credentials are created dynamically and provided to the user. For more information on IAM Roles, please refer to the below URL: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html

----------------

Your design team is planning to design an application that will be hosted on the AWS Cloud. One of their main non-functional requirements is given below. Reduce inter-dependencies so failures do not impact other components. Which of the following concepts does this requirement relate to?

> Decoupling

The entire concept of decoupling components is to ensure that the different components of an applications can be managed and maintained separately. If all components are tightly coupled then when one component goes down , the entire application would do down. Hence it is always a better design practice to decouple application components. For more information on a decoupled architecture, please refer to the below URL: http://whatis.techtarget.com/definition/decoupled-architecture

----------------

Which of the following networking component can be used to host EC2 resources in the AWS Cloud?

> AWS VPN

The AWS Documentation mentions the following on Amazon VPC Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS. For more information on AWS VPC, please refer to the below URL: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Introduction.html

----------------

There is a requirement to collect important metrics from AWS RDS and EC2 Instances. Which of the following services can help fulfil this requirement.

> Amazon CloudWatch

The AWS documentation mentions the following Amazon CloudWatch is a monitoring service for AWS cloud resources and the applications you run on AWS. You can use Amazon CloudWatch to collect and track metrics, collect and monitor log files, set alarms, and automatically react to changes in your AWS resources For more information on AWS Cloudwatch, please refer to the below URL: https://aws.amazon.com/cloudwatch/

----------------

Which of the following terms refers to another geographic location in AWS?

> Region

Regions correspond to different geographic locations in AWS. For more information on Regions and Availability Zones in AWS, please refer to the below URL: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html

----------------

Currently your organization has an operational team that takes care of ID management in their on-premise data center. They now also need to manage users and groups created in AWS. Which of the following AWS tools would they need to use for performing this management function.

> AWS Identity and Access Management (IAM)

The AWS documentation mentions the following AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources. You use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources. For more information on AWS IAM, please refer to the below URL: http://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html

----------------

Your company is planning to host a large ecommerce application on the AWS Cloud. One of their major concerns is Internet attacks such as DDos attacks. Which of the following services can help mitigate this concern. Choose 2 answers from the options given below

> AWS Shield, Cloudfront

The AWS Documentation mentions the following on DDoS attacks One of the first techniques to mitigate DDoS attacks is to minimize the surface area that can be attacked thereby limiting the options for attackers and allowing you to build protections in a single place. We want to ensure that we do not expose our application or resources to ports, protocols or applications from where they do not expect any communication. Thus, minimizing the possible points of attack and letting us concentrate our mitigation efforts. In some cases, you can do this by placing your computation resources behind Content Distribution Networks (CDNs) or Load Balancers and restricting direct Internet traffic to certain parts of your infrastructure like your database servers. In other cases, you can use firewalls or Access Control Lists (ACLs) to control what traffic reaches your applications. For more information on DDos attack prevention, please refer to the below URL: https://aws.amazon.com/shield/ddos-attack-protection/

----------------

Which of the following services relates the concept of Distributing traffic to multiple EC2 Instances

> Elastic Load Balancer

The AWS Documentation mentions the following A load balancer distributes incoming application traffic across multiple EC2 instances in multiple Availability Zones. This increases the fault tolerance of your applications. Elastic Load Balancing detects unhealthy instances and routes traffic only to healthy instances. For more information on the Elastic Load Balancer service, please refer to the below URL: https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/introduction.html

----------------

Which of the following disaster recovery deployment mechanisms that has the highest downtime

> Backup and Restore

The snapshot from the AWS Documentation shows the spectrum of the Disaster recovery methods. If you go to the further end of the spectrum you have the least time for downtime for the users. For more information on Disaster recovery techniques, please refer to the below URL: https://aws.amazon.com/blogs/aws/new-whitepaper-use-aws-for-disaster-recovery/

----------------

Which of the following are features of an edge location. Choose 3 answers from the options given below

> Distribuite content to users, Cache common responses, Used in conjunction with the Cloundfront service

The AWS Documentation mentions the following Amazon CloudFront employs a global network of edge locations and regional edge caches that cache copies of your content close to your viewers. Amazon CloudFront ensures that end-user requests are served by the closest edge location. As a result, viewer requests travel a short distance, improving performance for your viewers. For files not cached at the edge locations and the regional edge caches, Amazon CloudFront keeps persistent connections with your origin servers so that those files can be fetched from the origin servers as quickly as possible.  For more information on Cloudfront and Edge locations, please refer to the following Link: https://aws.amazon.com/cloudfront/details/

----------------

Which AWS Cloud service helps in quick deployment of resources which can make use of different programming languages such as .Net and Java?

> AWS Elastic Beanstalk

The AWS Documentation mentions the following AWS Elastic Beanstalk is an easy-to-use service for deploying and scaling web applications and services developed with Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker on familiar servers such as Apache, Nginx, Passenger, and IIS. For more information on enabling AWS Elastic beanstalk, please refer to the below URL: https://aws.amazon.com/elasticbeanstalk/?p=tile

----------------

Which of the following features of Amazon RDS allows for better availability of databases. Choose 2 answers from the options given below

> Multi-AZ, Read Replicas

The AWS Documentation mentions the following If you are looking to use replication to increase database availability while protecting your latest database updates against unplanned outages, consider running your DB instance as a Multi-AZ deployment.  You can use Multi-AZ deployments and Read Replicas in conjunction to enjoy the complementary benefits of each. You can simply specify that a given Multi-AZ deployment is the source DB instance for your Read Replica(s). That way you gain both the data durability and availability benefits of Multi-AZ deployments and the read scaling benefits of Read Replicas. For more information on AWS Reserved Instances, please visit the Link: https://aws.amazon.com/ec2/pricing/reserved-instances/

----------------

Which of the following can be attached to EC2 Instances to store data.

> Amazon EBS Volumes

The AWS Documentation mentions the following on EBS Volumes An Amazon EBS volume is a durable, block-level storage device that you can attach to a single EC2 instance. You can use EBS volumes as primary storage for data that requires frequent updates, such as the system drive for an instance or storage for a database application For more information on EBS Volumes, please refer to the below URL: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.htm

----------------

Which of the following services is a serverless compute service in AWS.

> AWS Lambda

The AWS Documentation mentions the following AWS Lambda is a compute service that lets you run code without provisioning or managing servers. AWS Lambda executes your code only when needed and scales automatically, from a few requests per day to thousands per second For more information on AWS Lambda, please refer to the below URL: https://docs.aws.amazon.com/lambda/latest/dg/welcome.html

----------------

Which of the following security requirements are managed by AWS? Select 3 answers from the options given below.

> Hardware patching, Physical security, Disk disposal

As per the Shared Responsibility model , the Patching of the underlying hardware and physical security of AWS resources is the responsibility of AWS. For more information on AWS Shared Responsibility Model, please refer to the below URL: https://aws.amazon.com/compliance/shared-responsibility-model/ Disk disposal: Storage Device Decommissioning When a storage device has reached the end of its useful life, AWS procedures include a decommissioning process that is designed to prevent customer data from being exposed to unauthorized individuals. AWS uses the techniques detailed in DoD 5220.22-M (National Industrial Security Program Operating Manual ) or NIST 800-88 (Guidelines for Media Sanitization) to destroy data as part of the decommissioning process. All decommissioned magnetic storage devices are degaussed and physically destroyed in accordance with industry-standard practices. For more information on Disk disposal, please refer to the below URL: https://d0.awsstatic.com/whitepapers/aws-security-whitepaper.pdf

----------------

Your company handles a crucial ecommerce application. This applications needs to have an uptime of at least 99.5%. There is a decision to move the application to the AWS Cloud. Which of the following deployment strategies can help build a robust architecture for such an application.

> Deploying the application across multiple regions

The AWS Documentation mentions the following Businesses are using the AWS cloud to enable faster disaster recovery of their critical IT systems without incurring the infrastructure expense of a second physical site. The AWS cloud supports many popular disaster recovery (DR) architectures from pilot light environments that may be suitable for small customer workload data center failures to hot standby environments that enable rapid failover at scale. With data centers in Regions all around the world, AWS provides a set of cloud-based disaster recovery services that enable rapid recovery of your IT infrastructure and data. For more information on enabling AWS Disaster Recovery, please refer to the below URL: https://aws.amazon.com/disaster-recovery/

----------------

Your company handles a crucial ecommerce application. This applications needs to have an uptime of at least 99.5%. There is a decision to move the application to the AWS Cloud. Which of the following deployment strategies can help build a robust architecture for such an application.

> AWS CLI

It allows developers to easily work with the various AWS resources programmatically For more information on the various programming tools available for AWS, please refer to the below URL: https://aws.amazon.com/tools/

----------------

Which of the following needs a user name and password to access AWS resources.

> AWS Management Console

The AWS Management console allows you to access and manage Amazon Web Services through a simple and intuitive web-based user interface For more information on AWS console, please refer to the below URL: https://aws.amazon.com/console/

----------------

If there is a requirement to host EC2 Instances in the AWS Cloud wherein the utilization is guaranteed to be consistent for a long period of time, which of the following would you utilize to ensure costs are minimized?

> Reseved Instances

When you have instances that will be used continuously and throughout the year, the best option is to buy reserved instances. By buying reserved instances, you are actually allocated an instance for the entire year or the duration you specify with a reduced cost. For more information on Reserved Instances, please visit the Link: https://aws.amazon.com/ec2/pricing/reserved-instances/

----------------

Which of the below mentioned services is equivalent to hosting virtual servers on an on-premise location?

> AWS EC2

The AWS Documentation mentions the following Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides secure, resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers. For more information on AWS EC2, please refer to the following Link: https://aws.amazon.com/ec2/

----------------

You are planning on deploying a video based application onto the AWS Cloud. These videos will be accessed by users across the world. Which of the below services can help stream the content in an efficient manner to the users across the globe?

> Amazon Cloudfront

The AWS Documentation mentions the following Amazon CloudFront is a web service that gives businesses and web application developers an easy and cost effective way to distribute content with low latency and high data transfer speeds. Like other AWS services, Amazon CloudFront is a self-service, pay-per-use offering, requiring no long term commitments or minimum fees. With CloudFront, your files are delivered to end-users using a global network of edge locations. For more information on CloudFront, please visit the Link: https://aws.amazon.com/cloudfront/

----------------

A company is planning to migrate their existing AWS Services to the Cloud. Which of the following would help them do a cost benefit analysis of moving to the AWS Cloud.

> AWS TCO calculator

The AWS Documentation mentions the following Use this calculator to compare the cost of running your applications in an on-premises or colocation environment to AWS. Describe your on-premises or colocation configuration to produce a detailed cost comparison with AWS. For more information on the TCO Calculator, please refer to the below URL: https://awstcocalculator.com/

----------------

Which of the following statements are FALSE when it comes to elasticity. Choose 2 answers from the options given below

> Diverting tracffic to instances with higher capacity, Diverting traffic across multiple regions

The concept of Elasticity is the means of an application having the ability to scale up and scale down based on demand. An example of such a service is the Autoscaling service For more information on AWS Autoscaling service, please refer to the below URL: https://aws.amazon.com/autoscaling/

----------------

Which of the following is not a category recommendation given by the AWS Trusted Advisor?

> High Avalilability

Screenshot in AWS Doc shows what services the Trusted Advisor Dashboard offers. For more information on the AWS Trusted Advisor, please visit the Link: https://aws.amazon.com/premiumsupport/trustedadvisor/

----------------

Your company is planning to move to the AWS Cloud. You need to give a presentation on the cost perspective when moving existing resources to the AWS Cloud. When it comes to Amazon EC2, which of the following is an advantage when it comes to the cost perspective.

> The ability to only pay for what you use

One of the advantages of EC2 Instances is the per second billing concept. This is given in the AWS documentation also With per-second billing, you pay for only what you use. It takes cost of unused minutes and seconds in an hour off of the bill, so you can focus on improving your applications instead of maximizing usage to the hour. Especially, if you manage instances running for irregular periods of time, such as dev/testing, data processing, analytics, batch processing and gaming applications, can benefit. For more information on EC2 Pricing, please refer to the below URL: https://aws.amazon.com/ec2/pricing/

----------------

Which of the following from AWS can be used to transfer petabytes of data from on-premise locations to the AWS Cloud.

> AWS Snowball

The AWS Documentation mentions the following Snowball is a petabyte-scale data transport solution that uses secure appliances to transfer large amounts of data into and out of the AWS cloud. Using Snowball addresses common challenges with large-scale data transfers including high network costs, long transfer times, and security concerns. Transferring data with Snowball is simple, fast, secure, and can be as little as one-fifth the cost of high-speed Internet. For more information on AWS Snowball , please visit the Link: https://aws.amazon.com/snowball/?p=tile
