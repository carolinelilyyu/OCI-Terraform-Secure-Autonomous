#Global variable. All resources in this availability domain
variable "availability_domain" {
  default = "0"
}

variable "tenancy_ocid" {}

variable "user_ocid" {}

variable "region" {}

variable "oci_private_key" {}

variable "oci_public_key" {}

variable "ssh_public_key" {}

variable "fingerprint" {}

variable "input_service" {}
variable "input_service_name" {}

#Network User Variables
variable "vcn_display_name" {
  default = "VCN"
}

variable "vcn_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_backend_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_frontend_cidr" {
  default = "10.0.2.0/24"
}

#Compute Instance User Variables
variable "compute_frontend_display_name" {
  default = "Bastion_Instance"
}

variable "instance_frontend_shape" {
  default = "VM.Standard2.1"
}

variable "compute_backend_display_name" {
  default = "Dev_Instance"
}

variable "instance_backend_shape" {
  default = "VM.Standard2.1"
}

variable "compartment_description" {
  default = "A compartment where some user should be able to manage resources"
}

variable "compartment_name" {
  default = "LABS_Compartment"
}
