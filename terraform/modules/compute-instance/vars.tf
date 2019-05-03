# Compute-instance Vars.
# Variables passed into compute module

variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "subnet_a" {}
variable "subnet_b" {}
variable "user_ocid" {}
variable "compute_frontend_display_name" {}
variable "instance_frontend_shape" {}
variable "compute_backend_display_name" {}
variable "instance_backend_shape" {}
variable "region" {}
variable "availability_domain" {}
variable "ssh_public_key" {}
variable "oci_public_key" {}
variable "oci_private_key" {}
variable "fingerprint" {}
variable "input_service" {}
variable "input_service_name" {}

variable "InstanceImageOCID" {
  # type = "map"
  # default = {  #   // See https://docs.us-phoenix-1.oraclecloud.com/images/  // Oracle-provided image "Oracle-Linux"
  #   us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaa2tq67tvbeavcmioghquci6p3pvqwbneq3vfy7fe7m7geiga4cnxa"  # }
  default = "ocid1.image.oc1.iad.aaaaaaaa2tq67tvbeavcmioghquci6p3pvqwbneq3vfy7fe7m7geiga4cnxa"
}

variable "DeveloperInstanceImageOCID" {
  #type = "map"

  # default = {  #   us-ashburn-1 = "ocid1.image.oc1..aaaaaaaapa4matxgu5slju7ikdgukbsbi2zbb5mhsurxicwtsrv4bev6ln4a" #   // See https://docs.us-phoenix-1.oraclecloud.com/images/  // Oracle-provided image "Oracle-Developer-Linux"  # }

  default = "ocid1.image.oc1..aaaaaaaapa4matxgu5slju7ikdgukbsbi2zbb5mhsurxicwtsrv4bev6ln4a"
}

variable "compute_hostname1" {
  default = "bastion1"
}

variable "compute_hostname2" {
  default = "dev1"
}

variable "BootStrapFile" {
  default = "./modules/compute-instance/userdata/bootstrap.sh.tpl"
}
