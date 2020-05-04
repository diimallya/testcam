#####################################################################
##
##      Created 4/22/20 by vijay. for createmicroec2
##
#####################################################################

output "vm_public_ip" {
  value = "Private IP : ${aws_instance.aws_instance.public_ip}"
}

output "sample_message" {
  value = "This is just a sample message"
}

output "vm_ssh_private_key" {
  value = "${tls_private_key.ssh.private_key_pem}"
}