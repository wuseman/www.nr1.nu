# knife

##### create ec2 chef client

   knife  ec2 server create -r role[base],role[webserver] -E development -I ami-2a31bf1a -i ~/.ssh/aws-west.pem -x ec2-user region us-west-2 -Z us-west-2b -G lamp flavor t1.micro -N chef-client1 no-host-key-verify

##### add role to chef node

   knife  node run_list add first-client "role[base]"

##### chef ssh

   knife  ssh name:* -x ec2-user -i ~/.ssh/aws-west.pem "hostname"
