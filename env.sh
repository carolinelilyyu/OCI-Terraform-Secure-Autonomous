#Enter Your Tenancy OCID
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaaqh3znnfm6hegf55s6o2ijohurcsyxasdsiqpq57z5npkseycos5q"
#Enter Your Compartment OCID
export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaahgwc3smj626ovrbsohc44go42piwhzlmmgsnjmpqkdsokam2n4eq"
#Enter Your User OCID
export TF_VAR_user_ocid="ocid1.user.oc1..aaaaaaaatfv5ry2h7cape2afatj4lcn3ywzqj6seksjmfazipzkyko3wvykq"
#Enter Your Fingerprint
export TF_VAR_fingerprint="f5:95:91:14:84:38:b5:3d:4c:2c:1e:e2:69:8e:33:3e"
#Enter Your Region (Example: us-ashburn-1)
export TF_VAR_region="us-ashburn-1"
#Enter Path to Your Private API Key. I'm not using the path one comment below. For my computer specifically, this is the path
export TF_VAR_oci_private_key=$HOME/.oci/oci_api_key.pem
#Enter Path to Your Public SSH Key. I'm not using the path one comment below. For my computer specifically, this is the path
#export TF_VAR_ssh_public_key=$(cat ~/.ssh/id_rsa.pub)
export TF_VAR_ssh_public_key=$(cat $HOME/.ssh/id_rsa.pub)
#Enter Path to Your Private SSH Key. I'm not using the path one comment below. For my computer specifically, this is the path
#export TF_VAR_ssh_authorized_private_key=$(cat ~/.ssh/id_rsa)
export TF_VAR_ssh_authorized_private_key=$(cat $HOME/.ssh/id_rsa)
export TF_VAR_ssh_private_key_file=$HOME/.ssh/id_rsa
