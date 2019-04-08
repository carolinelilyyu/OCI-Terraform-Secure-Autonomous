#Enter Your Tenancy OCID
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaa5arrzhx6wibc7iotaztfkt5bofbrfkw4x56kaplt36tat63lexgq"
#Enter Your Compartment OCID
export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaaxkrmyyd6ffbggujzbfuxoirbyp7qq3h6gg77x3dtejiydxc665ha"
#Enter Your User OCID
export TF_VAR_user_ocid="ocid1.user.oc1..aaaaaaaajxcm3ypgkocore6glozzxfnjemefsjgi6sbxlsjt22kh65exjb2q"
#Enter Your Fingerprint
export TF_VAR_fingerprint="07:df:a7:ae:8a:b2:a2:50:f5:c7:e1:f6:b1:e2:02:4e"
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
