aws_region          = "us-west-2"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
availability_zones  = ["us-west-2b", "us-west-2b"]
ami_id              = "ami-05ee755be0cd7555c" # Replace with a valid AMI
instance_type       = "t2.micro"
key_name            = "bharat_ec2_key_pair" # Replace with your EC2 Key Pair