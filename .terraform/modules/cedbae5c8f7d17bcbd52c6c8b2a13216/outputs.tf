output "subnet_a" {
  value = "${oci_core_subnet.subnet_a.id}"
}

# output "subnet_b" {
#   value = "${oci_core_subnet.subnet_a.id}"
# }

output "vcn_id" {
  value = "${oci_core_vcn.default_vcn.id}"
}
