# This is the parent main.tf. This is the file to define all the module types. Each module has its own main.tf

# create Compute Instance
module "compute" {
  source               = "./modules/compute-instance"
  tenancy_ocid         = "${var.tenancy_ocid}"
  compartment_ocid     = "${var.compartment_ocid}"
  ssh_public_key       = "${var.ssh_public_key}"
  availability_domain  = "${var.availability_domain}"
  region               = "${var.region}"
  compute_display_name = "${var.compute_display_name}"
  instance_shape       = "${var.instance_shape}"
  instance_count       = "${var.instance_count}"
  subnet_a             = "${module.network.subnet_a}"
  subnet_b             = "${module.network.subnet_b}"
  ssh_private_key_file = "${var.ssh_private_key_file}"
  oci_private_key      = "${var.oci_private_key}"
  user_ocid            = "${var.user_ocid}"
}

#create VPC, 2 subnets, security lists, route tables, etc.   
module "network" {
  source              = "./modules/network"
  tenancy_ocid        = "${var.tenancy_ocid}"
  compartment_ocid    = "${var.compartment_ocid}"
  ssh_public_key      = "${var.ssh_public_key}"
  vcn_display_name    = "${var.vcn_display_name}"
  availability_domain = "${var.availability_domain}"
  destination         = "${module.servicegateway.destination}"
  service_gateway_id  = "${module.servicegateway.service_gateway_id}"
}

#create VPC, 2 subnets, security lists, route tables, etc.   
module "servicegateway" {
  source           = "./modules/service-gateway"
  tenancy_ocid     = "${var.tenancy_ocid}"
  user_ocid        = "${var.user_ocid}"
  compartment_ocid = "${var.compartment_ocid}"
  vcn_id           = "${module.network.vcn_id}"
}
