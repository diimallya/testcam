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
  description = "Generated"
  default = "us-east-2"
}
 
variable "aws_ami_owner_id" {
  description = "AWS AMI Owner ID"
  default     = "938135568375"
}

data "aws_ami" "aws_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.2020*"]
  }
  
  filter {
      name   = "architecture"
      values = ["x86_64"]
  }

  filter {
      name   = "root-device-type"
      values = ["ebs"]
  }

  owners = ["${var.aws_ami_owner_id}"]
}
