# Compute-instance Vars.
# Variables passed into compute module

variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "ssh_public_key" {}
variable "availability_domain" {}
variable "region" {}
variable "compute_display_name" {}
variable "instance_shape" {}
variable "instance_count" {}
variable "subnet_a" {}

# variable "subnet_b" {}

variable "ssh_private_key_file" {}
variable "oci_private_key" {}

variable "InstanceImageOCID" {
  type = "map"

  default = {
    // See https://docs.us-phoenix-1.oraclecloud.com/images/  // Oracle-provided image "Oracle-Linux"

    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaa2tq67tvbeavcmioghquci6p3pvqwbneq3vfy7fe7m7geiga4cnxa"
  }
}

variable "DeveloperInstanceImageOCID" {
  type = "map"

  default = {
    // See https://docs.us-phoenix-1.oraclecloud.com/images/  // Oracle-provided image "Oracle-Developer-Linux"

    us-ashburn-1 = "ocid1.image.oc1..aaaaaaaapa4matxgu5slju7ikdgukbsbi2zbb5mhsurxicwtsrv4bev6ln4a"
  }
}

variable "instance_name" {
  default = "compute_image"
}

variable "compute_hostname" {
  default = "testinstance"
}

variable "BootStrapFile" {
  default = "./modules/compute-instance/userdata/bootstrap.sh"
}
