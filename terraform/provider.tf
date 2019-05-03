provider "oci" {
  tenancy_ocid         = "${var.tenancy_ocid}"
  user_ocid            = "${var.user_ocid}"
  fingerprint          = "${var.fingerprint}"
  private_key_path     = "${var.oci_private_key}"
  region               = "${var.region}"
  disable_auto_retries = "true"
}
