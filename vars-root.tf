# This is where we define/set default values to variables. Some variables are also export from 
# env.sh. These are where all the variables are defined and passed into main.tf, so main.tf can
# pass those variables to modules.

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "oci_private_key" {}
variable "compartment_ocid" {}
variable "region" {}
variable "ssh_public_key" {}
variable "ssh_authorized_private_key" {}
variable "ssh_private_key_file" {}

#Global variable. All resources in this availability domain
variable "availability_domain" {
  default = "0"
}

#Compute Instance User Variables
variable "compute_display_name" {
  default = "Caroline_Burlington_Compute"
}

variable "compute_nat_display_name" {
  default = "Caroline_Burlington_NAT_Compute"
}

variable "instance_shape" {
  default = "VM.Standard2.1"
}

variable "instance_count" {
  default = "1"
}

#Network User Variables
variable "vcn_display_name" {
  default = "Caroline_Burlington_VCN"
}
