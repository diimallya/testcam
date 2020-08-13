#####################################################################
##
##      Created 4/22/20 by vijay. for createmicroec2
##
#####################################################################

variable "aws_image_size" {
  description = "AWS Image Instance Size"
  default     = "t2.micro"
}


variable "aws_instance_name" {
  type = "string"
  description = "AWS Instance Name"
  default = "projectdemo"
}

variable "aws_key_pair_name" {
  type = "string"
  description = "AWS Key Pair Name"
  default = "ec2kp"
}

variable "aws_region" {
  type = "string"
  description = "AWS Region"
  default = "us-east-2"
}
 
variable "aws_ami_owner_id" {
  description = "AWS AMI Owner ID"
  default     = "938135568375"
}

variable "aws_image" {
  type        = "string"
  description = "Operating system image id / template that should be used when creating the virtual image"
  default     = "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"
}

# Lookup for AMI based on image name and owner ID
data "aws_ami" "aws_ami" {
  most_recent = true
  
  filter {
    name   = "name"
    values = ["${var.aws_image}*"]
  }
  owners = ["${var.aws_ami_owner_id}"]
}
