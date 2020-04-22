#####################################################################
##
##      Created 4/22/20 by vijay. for project1
##
#####################################################################

variable "ibmc_vm_inst_domain" {
  type = "string"
  description = "The domain for the computing instance."
}

variable "ibmc_vm_inst_hostname" {
  type = "string"
  description = "The hostname for the computing instance."
}

variable "ibmc_vm_inst_datacenter" {
  type = "string"
  description = "The datacenter in which you want to provision the instance. NOTE: If dedicated_host_name or dedicated_host_id is provided then the datacenter should be same as the dedicated host datacenter."
}

variable "ibmc_vm_inst_os_reference_code" {
  type = "string"
  description = "Generated"
}

variable "ibm_ssh_key_name" {
  type = "string"
  description = "Generated"
}

