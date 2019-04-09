resource "oci_core_instance" "PrivateInstance" {
  availability_domain = "${
  lookup(data.oci_identity_availability_domains.ads.availability_domains[var.availability_domain],"name")}"

  compartment_id = "${var.compartment_ocid}"
  display_name   = "Caroline_Private_Instance"
  shape          = "VM.Standard2.2"

  create_vnic_details {
    subnet_id        = "${var.subnet_a}"
    assign_public_ip = false
  }

  metadata {
    ssh_authorized_keys = "${var.ssh_public_key}"
    user_data           = "${base64encode(file(var.BootStrapFile))}"
  }

  source_details {
    source_type = "image"
    source_id   = "${var.DeveloperInstanceImageOCID[var.region]}"
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
  display_name   = "Caroline_Public_Instance"
  shape          = "${var.instance_shape}"

  create_vnic_details {
    subnet_id        = "${var.subnet_b}"
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "${var.compute_hostname}"
  }

  source_details {
    source_type = "image"
    source_id   = "${var.InstanceImageOCID[var.region]}"
  }

  metadata {
    ssh_authorized_keys = "${var.ssh_public_key}"
  }

  timeouts = {
    create = "60m"
  }
}
