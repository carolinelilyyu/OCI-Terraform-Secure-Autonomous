# This is the parent main.tf. This is the file to define all the module types. Each module has its own main.tf

#create VPC, 2 subnets, security lists, route tables, etc.   
module "network" {
  source       = "./modules/network"
  tenancy_ocid = "${var.tenancy_ocid}"

  vcn_display_name        = "${var.vcn_display_name}"
  availability_domain     = "${var.availability_domain}"
  destination             = "${module.servicegateway.destination}"
  service_gateway_id      = "${module.servicegateway.service_gateway_id}"
  subnet_backend_cidr     = "${var.subnet_backend_cidr}"
  subnet_frontend_cidr    = "${var.subnet_frontend_cidr}"
  vcn_cidr                = "${var.vcn_cidr}"
  oci_public_key          = "${var.oci_public_key}"
  user_ocid               = "${var.user_ocid}"
  compartment_description = "${var.compartment_description}"
  compartment_name        = "${var.compartment_name}"
}

#create VPC, 2 subnets, security lists, route tables, etc.   
module "servicegateway" {
  source           = "./modules/service-gateway"
  tenancy_ocid     = "${var.tenancy_ocid}"
  user_ocid        = "${var.user_ocid}"
  compartment_ocid = "${module.network.compartment_id}"
  vcn_id           = "${module.network.vcn_id}"
}

# create Compute Instance
module "compute" {
  source                        = "./modules/compute-instance"
  tenancy_ocid                  = "${var.tenancy_ocid}"
  compartment_ocid              = "${module.network.compartment_id}"
  user_ocid                     = "${var.user_ocid}"
  compute_backend_display_name  = "${var.compute_backend_display_name}"
  compute_frontend_display_name = "${var.compute_frontend_display_name}"
  instance_frontend_shape       = "${var.instance_frontend_shape}"
  instance_backend_shape        = "${var.instance_backend_shape}"
  subnet_a                      = "${module.network.subnet_a}"
  subnet_b                      = "${module.network.subnet_b}"
  region                        = "${var.region}"
  availability_domain           = "${var.availability_domain}"
  ssh_public_key                = "${var.ssh_public_key}"
  oci_public_key                = "${var.oci_public_key}"
  oci_private_key               = "${var.oci_private_key}"
  fingerprint                   = "${var.fingerprint}"
  input_service                 = "${var.input_service}"
  input_service_name            = "${var.input_service_name}"
  developer_image_ocid          = "${var.developer_image_ocid}"
}
