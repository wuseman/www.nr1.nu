# aws

##### Use AWS CLI and JQ to get a list of instances sorted by launch time

   aws  ec2 describe-instances | jq '.["Reservations"]|.[]|.Instances|.[]|.LaunchTime + " " + .InstanceId' | sort -n

##### Use AWS CLI and JQ to get a list of instances sorted by launch time

   aws  ec2 describe-instances query 'Reservations[*].Instances[*].[InstanceId,LaunchTime]' output text | sort -n -k 2

##### Find the most recent snapshot for an AWS EBS volume

   aws  ec2 describe-snapshots filter 'Name=volume-id,Values=vol-abcd1234' | jq '.[]|max_by(.StartTime)|.SnapshotId'

##### List cloudfront distributions based on domain

   aws  cloudfront list-distributions | jq -r '.DistributionList | .Items | .[] | .Id + " " + .Aliases.Items[]'

##### Cross regions Amazon EC2 AMI copy

   aws  ec2 describe-regions output text | cut -f 3 | xargs -I {} aws ec2 copy-image source-region eu-west-1 region {} source-image-id ami-xxxxx  name "MyAmi"

##### Get account info from CLI

   aws  sts get-caller-identity output text | awk {'print $1'}

##### Get account info from CLI

   aws  sts get-caller-identity output text | awk {'print $1'}

##### List EC2 servers by tag name and instanceId

   aws  ec2 describe-instances query "Reservations[*].Instances[*]" | jq '.[]|.[]|(if .Tags then (.Tags[]|select(.Key == "Name").Value) else empty end)+", " +.InstanceId'

##### Use AWS CLI and JQ to get a list of instances sorted by launch time

   aws  ec2 describe-instances | jq '.["Reservations"]|.[]|.Instances|.[]|.LaunchTime + " " + .InstanceId' | sort -n

##### Use AWS CLI and JQ to get a list of instances sorted by launch time

   aws  ec2 describe-instances query 'Reservations[*].Instances[*].[InstanceId,LaunchTime]' output text | sort -n -k 2

##### Find the most recent snapshot for an AWS EBS volume

   aws  ec2 describe-snapshots filter 'Name=volume-id,Values=vol-abcd1234' | jq '.[]|max_by(.StartTime)|.SnapshotId'

##### List cloudfront distributions based on domain

   aws  cloudfront list-distributions | jq -r '.DistributionList | .Items | .[] | .Id + " " + .Aliases.Items[]'

##### Cross regions Amazon EC2 AMI copy

   aws  ec2 describe-regions output text | cut -f 3 | xargs -I {} aws ec2 copy-image source-region eu-west-1 region {} source-image-id ami-xxxxx  name "MyAmi"

##### Get account info from CLI

   aws  sts get-caller-identity output text | awk {'print $1'}
