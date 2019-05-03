resource "oci_core_instance" "PrivateInstance" {
  availability_domain = "${
  lookup(data.oci_identity_availability_domains.ads.availability_domains[var.availability_domain],"name")}"

  compartment_id = "${var.compartment_ocid}"
  display_name   = "${var.compute_backend_display_name}"
  shape          = "${var.instance_backend_shape}"

  create_vnic_details {
    subnet_id        = "${var.subnet_a}"
    assign_public_ip = false
    hostname_label   = "${var.compute_hostname2}"
  }

  metadata {
    ssh_authorized_keys = "${file(var.ssh_public_key)}"
    user_data           = "${base64encode(data.template_file.init.rendered)}"
  }

  source_details {
    source_type = "image"
    source_id   = "${var.DeveloperInstanceImageOCID}"
  }

  timeouts {
    create = "60m"
  }
}

# Create compute instance. This is the compute-instance main.tf
resource "oci_core_instance" "PublicInstance" {
  availability_domain = "${
  lookup(data.oci_identity_availability_domains.ads.availability_domains[var.availability_domain],"name")}"

  compartment_id = "${var.compartment_ocid}"
  display_name   = "${var.compute_frontend_display_name}"
  shape          = "${var.instance_frontend_shape}"

  create_vnic_details {
    subnet_id        = "${var.subnet_b}"
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "${var.compute_hostname1}"
  }

  source_details {
    source_type = "image"
    source_id   = "${var.InstanceImageOCID}" #${var.InstanceImageOCID[var.region]}"
  }

  metadata {
    ssh_authorized_keys = "${file(var.ssh_public_key)}"
  }

  timeouts = {
    create = "60m"
  }
}
