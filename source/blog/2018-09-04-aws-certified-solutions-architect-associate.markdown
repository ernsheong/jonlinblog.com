---
title: How to pass AWS Certified Solutions Architect (Associate) with the least (legitimate) effort
tags: tech, software, aws
---

I passed the exam yesterday (Monday) with a score of 954/1000! I studied on Thursday night, Friday night, Saturday afternoon + night, and Sunday night. The passing grade is 720.

**Disclaimer**: Doing everything in this post does not guarantee a pass! You are responsible for your own grade.

**Background**: I have been coding for 6 years on the job + side, with active use of AWS for about 1 year (on the job), and passive use of AWS for several years (use of S3 in other jobs, personal static website hosting).

**Attitude**: The attitude one should have is not to simply pass the exam (you should avoid the so-called “question bank”, it constitutes as cheating anyway). The attitude should be to gain as much deeper understanding of AWS as possible so that in the real world you know what to do on the fly. So you should really seek to read and understand deeply as many concepts and services as possible that AWS has to offer; this is not just about the exam itself.

What I did that helped the most:

1. Refer to [this thread](https://acloud.guru/forums/aws-certified-solutions-architect-associate/discussion/-L7uITWGWEI21g2BXL1_/Exam%20Feedback%20-%20SAA%20February%202018%20Editioen) or [Jayendra's guide](http://jayendrapatil.com/aws-solutions-architect-associate-feb-2018-exam-learning-path/) as a study guide for topics to cover
2. Read the User Guide of each corresponding AWS service, e.g. [EC2 Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) (as a rule of thumb, you should read all the interesting bits for each service, skip UI tutorial steps, skip all coding setup, skip anything with too much code detail)
3. Did I say read the User Guide / Documentation? RTFM
4. Read the FAQ of some of the services (I did not manage to read the FAQ for all the services)
5. Play around with the AWS console
6. [Exam guide and sample questions](https://aws.amazon.com/certification/certified-solutions-architect-associate/)
7. There are topical sample questions on Jayendra's blog, but it's sort of cheating, haha

What I **didn’t** do:

1. Watch any paid course content (ACloudGuru, etc.)
2. Do any paid lab courses (Qwiklabs, etc.)
3. Read AWS whitepapers (I didn’t manage to get to them, though this is recommended)
4. Look into documentation that went into too much implementation detail (client code snippets, CLI, API calls)
5. Go through extensive tutorials on how to do anything (no time)

Areas and topics to cover from the top of my head (non-exhaustive). I can’t say too much because there is an NDA:

1. Elastic Load Balancing: ALB, NLB, cross-zone load balancing
2. Different EBS (Elastic Block Store) types and when to use which
3. EC2 Auto Scaling, termination policies
4. Route 53 routing policies
5. VPC. CIDR format. Security groups. Network ACLs. NAT gateway. NAT instance. Other internet gateways.
6. S3. Versioning. All the storage classes. Lifecycle policy.
7. CloudFormation templates
8. Lambda. Lambda. Lambda. Lambda integrations.
9. API Gateway.
10. RDS. Aurora.
11. CloudWatch. CloudWatch Logs
12. CloudTrail
13. Kinesis
14. Redshift
15. DynamoDB: Partition key, Throughput
16. CodeDeploy, CodeCommit, CodeWhatever.
17. Encryption for S3, EBS, etc. Key management.
18. Some other stuff

Don’t memorize. The key is to get a hang of the stack and let common sense and understanding take over. Memorizing won’t get you very far.

Questions got really tricky at the end. There were many scenarios. Note that some questions are dummies and do not count toward your final score (but you won’t know which ones). I recommend budgeting your time so that you can spend more time on the second half questions. You can use the “Flag” feature to go back to any earlier questions. You have 65 questions, 130 minutes. I found that I needed all of the time and even went back to change some answers, though some whizzes in the forums managed to finish in 60 minutes. Often there are 2 or even 3 close answers.

**Good luck!**

**Conclusion**: AWS is just complicated and complex. All the operational caveats and corner cases is delegated to the user. The offerings are widespread and impressive, but the operational simplicity is ostentatiously missing. On the other hand, Google Cloud Platform (GCP) offers less flexibility for the gain of simplicity and ease of operations. My next personal stop would be GCP’s Cloud Architect/Engineer certification. Till then.

**Shameless plug**: I am working on [KanRails](kanrails.com), a workflow and pipeline management software for business processes. Sign up to get updates on launch!
