#Get API Keys
 
curl -L -o terraforminstall.sh http://bit.ly/2pw9mpT;bash terraforminstall.sh
if [ ! -f ~/.oci/oci_api_key_public.pem ]; then
    echo "~/.oci/oci_api_key_public.pem: file not found; API Public Key not obtained!"
else echo "API Public Key obtained: ~/.oci/oci_api_key_public.pem was found."
fi
 
#Clean up unnecessary outputs from previous command
 
rm -rf tftest terraforminstall.sh
 
#Get Terraform
 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";brew install terraform;brew reinstall terraform
if [ ! -f /usr/local/bin/terraform ]; then
    echo "/usr/local/bin/terraform: file not found; Terraform not installed!"
else echo "Terraform installed: /usr/local/bin/terraform was found."
fi
 
#Get OCI Provider for Terraform
 
mkdir -p ~/.terraform.d/plugins/terraform-provider-oci-master
git clone https://github.com/terraform-providers/terraform-provider-oci ~/.terraform.d/plugins/terraform-provider-oci-master/
if [ ! -d ~/.terraform.d/plugins/terraform-provider-oci-master ]; then
    echo "~/.terraform.d/plugins/terraform-provider-oci-master: directory not found; OCI Provider for Terraform not installed!"
else echo "OCI Provider for Terraform installed: file ~/.terraform.d/plugins/terraform-provider-oci-master was found."
fi

#Generate Alternate SSH Key Pair

ssh-keygen -t rsa -f ~/.ssh/tf-lab1-key
if [ ! -f ~/.ssh/tf-lab1-key.pub ]; then
    echo "~/.ssh/tf-lab1-key.pub: file not found; alternate public SSH key not generated!"
else echo "Public SSH key found: ~/.ssh/tf-lab1-key.pub was found."
fi
if [ ! -f ~/.ssh/tf-lab1-key ]; then
    echo "~/.ssh/tf-lab1-key: file not found; alternate private SSH key not generated!"
else echo "Private SSH key found: ~/.ssh/tf-lab1-key was found."
fi