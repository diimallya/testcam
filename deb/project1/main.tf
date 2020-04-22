#####################################################################
##
##      Created 4/22/20 by vijay. for project1
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "ibm" {
  version = "~> 0.7"
}


resource "ibm_compute_vm_instance" "ibmc_vm_inst" {
  cores       = 1
  memory      = 1024
  domain      = "${var.ibmc_vm_inst_domain}"
  hostname    = "${var.ibmc_vm_inst_hostname}"
  datacenter  = "${var.ibmc_vm_inst_datacenter}"
  ssh_key_ids = ["${ibm_compute_ssh_key.auth.id}"]
  os_reference_code = "${var.ibmc_vm_inst_os_reference_code}"
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

resource "ibm_compute_ssh_key" "auth" {
  label = "${var.ibm_ssh_key_name}"
  public_key = "${tls_private_key.ssh.public_key_openssh}"
}