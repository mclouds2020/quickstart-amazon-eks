# Requirements for EKS add-in documentation

Provide logo (preferably in a vector format)

written permission for the AWS Quick Start team to use your logo on AWS Quick Start websites

Architecture diagram based on provided template (ideally provide an editable source, not a rendered image)

Provide text for the following sections:

Link to product homepage:

Link to product documentation: 

Link to license pricing:

Who is the target audience for your software ?

What is the primary usage scenario ?

Describe how your software runs on Kubernetes (Walk through the components)

Describe any software licensing (costs, where/how to acquire, is there a demo)

What AWS services are used (aside from EKS) ?

Is there any pre-requisite knowledge required to use/deploy your software ?

Describe any additional steps that must be completed prior to launching the Quick Start (Excluding licensing and EKS setup)

How long should deployment of the product take into an existing kubernetes cluster ?

Are all components highly available ? if not, for each component, describe:
  * function component provides
  * is it fault tolerant ? How is fault tolerance achieved ?
  * what is the impact if the component becomes unavailable ?
  * what steps can customers take to protect against or recover from failure

Is all storage used resistant to an AZ failure ? (Note tht the the default persistent 
storage on EKS is EBS, which is AZ bound). if not, for each component, describe:
  * function component provides
  * Why is a multi-AZ storage platform like EFS not suitable to mitigate
  * what is the impact if the data is lost/unavailable ?
  * what steps can customers take to back up and recover data

Provide step by step instructions on how to test the software is functional after deployment is complete

Document any best practices specific to this deployment, and provide links to general best practice documentation (if exists)

Are there any security related callouts ? for example, common misconfigurations that could result in poor security posture, or post any post-deployment configurations to improve security

Any additional useful informational/background links?

Provide link to product FAQ's ?
 
Provide any FAQ's specific to this deployment ? 

