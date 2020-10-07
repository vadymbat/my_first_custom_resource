# My first cloudformation custom resource

Requirements:
* Unix-based machine
* AWS account
* aws-cli installed on the machine
* IAM user with access to CloudFormation, IAM, Lambda, to create a cloudformation stack
* S3 bucket (should be at the same region as a lambda)

How to deploy:
1. clone the repo 
```
git clone https://github.com/vadymbat/my_first_custom_resource \
&& cd my_first_custom_resource
```
2. Put your aws parameters to `build.sh` and `deploy.sh`
3. Run `build.sh` to build and upload zip for a lambda
```
bash build.sh
```
4. Run `deploy.sh` to create a cloudformation stack
```
bash deploy.sh
```

Also take a look at [logs](execution.log) which lambda generated.

More information about custom resources [here](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-custom-resources.html).

The link to the original AWS [guide](https://aws.amazon.com/blogs/infrastructure-and-automation/aws-cloudformation-custom-resource-creation-with-python-aws-lambda-and-crhelper/).
