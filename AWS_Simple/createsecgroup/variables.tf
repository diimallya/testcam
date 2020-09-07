#####################################################################
##
##      Created 9/7/20 by ucdpadmin for cloud dm_aws. for my-test-prjt
##
#####################################################################

variable "group_name_vpc_id" {
  type = "string"
  description = "Generated"
  default = "vpc-7c954d17"
}

variable "group_name" {
  type = "string"
  description = "Security Group Name"
  default = "my_sg"
}