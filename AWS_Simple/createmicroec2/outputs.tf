#####################################################################
##
##      Created 4/22/20 by vijay. for createmicroec2
##
#####################################################################

output "vm_ip" {
  value = "Public : ${aws_instance.aws_instance.private_ip}"
}

output "sample_message" {
  value = "This is just a sample message"
}