#Define authentication variables

#Enter your tenancy OCID
export TF_VAR_tenancy_ocid=""
#Enter your region (e.g. us-ashburn-1)
export TF_VAR_region="us-ashburn-1"
#Enter your user OCID
export TF_VAR_user_ocid=""
#Fingerprint
export TF_VAR_fingerprint=""
#Path to your private API key
export TF_VAR_oci_private_key="../.oci/oci_api_key.pem"
#Path to your public API key
export TF_VAR_oci_public_key="../.oci/oci_api_key_public.pem"
#Path to your public SSH Key for your public instance
export TF_VAR_ssh_public_key="../.ssh/id_rsa.pub"
