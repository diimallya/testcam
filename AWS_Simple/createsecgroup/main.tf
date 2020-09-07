#####################################################################
##
##      Created 9/7/20 by ucdpadmin for cloud dm_aws. for my-test-prjt
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "aws" {
  version = "~> 1.8"
}

resource "aws_security_group" "group_name" {
  name = "${var.group_name}"
  description = "TODO"
  vpc_id = "${var.group_name_vpc_id}"
  ingress {
    from_port = 2000
    to_port = 5010
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "${var.group_name}"
  }
}

