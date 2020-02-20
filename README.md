# My first cloudformation custom resource

## Here is an example of a simple custom resource for cloudformation

Requirements:
* IAM user with access to CloudFormation, IAM, Lambda, to create a stack
* S3 bucket (should be at the same region as a lambda)

How to use:
1. run `build.sh` to build and upload zip for a lambda
2. run `deploy.sh` to create a cloudformation stack

Also take a look at [logs](execution.log) which lambda generated.

More information about custom resources [here](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-custom-resources.html).

The link to the original AWS [guide](https://aws.amazon.com/blogs/infrastructure-and-automation/aws-cloudformation-custom-resource-creation-with-python-aws-lambda-and-crhelper/).
