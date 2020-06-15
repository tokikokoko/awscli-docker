# awscli-docker
## Usage
```shell
# Enter aws environment
docker run --name awscli -it -v ~/.aws:/home/aws/.aws awscli

# Select profile
export AWS_PROFILE=test

# Describe ec2 instances
aws ec2 describe-instances
```
