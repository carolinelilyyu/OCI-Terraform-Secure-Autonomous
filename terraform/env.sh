#Define authentication variables

#Enter your user OCID
export TF_VAR_user_ocid="ocid1.user.oc1..aaaaaaaavd2hf6phseyncvjktrqcwxcxtmkpzg3msq7a6dtue5vo4s3oraea"
#Enter your tenancy OCID
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaaqh3znnfm6hegf55s6o2ijohurcsyxasdsiqpq57z5npkseycos5q"
#Enter your region (e.g. us-ashburn-1)
export TF_VAR_region="us-ashburn-1"
#Enter your fingerprint (generated on OCI console with public API key in ~/.oci/oci_api_key_public.pem)
#pbcopy < ~/.oci/oci_api_key_public.pem
export TF_VAR_fingerprint="59:a2:af:2f:cd:eb:a1:a2:85:82:67:88:db:fc:db:dc"
#Enter path to your private API key
export TF_VAR_oci_private_key="../.oci/oci_api_key.pem"
export TF_VAR_oci_public_key="../.oci/oci_api_key_public.pem"
#Enter path to your public SSH Key for your public instance
export TF_VAR_ssh_public_key="../.ssh/id_rsa.pub"
