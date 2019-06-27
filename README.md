## Welcome
Welcome to the Citizen's Terraform workshop

## Pre-requisites

### Install Terraform
[https://www.terraform.io/downloads.html](https://www.terraform.io/downloads.html)

## Architecture Diagram

This is what we will be provisioning with Terraform

![Alt Text](/pics/15.png)

## Customize Environment Variables


First, change directory to "Repo/terraform"

```sh
cd Repo/terraform
```

#### Replacing Tenancy OCID environment variable

Sign into your OCI tenancy using your OCI credentials (tenancy name, username, and password)

Upon entering the OCI Console, hover your mouse over the user menu in the top right corner. From the resulting drop-down list, and click on Tenancy: <your tenancy's name>.

The OCI Console’s main dashboard.

![Alt Text](/pics/1.png)

Choosing our tenancy.

![Alt Text](/pics/2.png)

Copying our tenancy OCID.

![Alt Text](/pics/3.png)

In env.sh, paste your tenancy OCID in its designated position.

#### Replacing Region OCID environment variable

Return to the OCI Console. Under the Tenancy Information section, find Home Region listed, and copy the string to the right of it to your clipboard.

![Alt Text](/pics/4.png)

In env.sh, paste the string in its designated position.

#### Replacing User OCID environment variable

Return to the OCI Console. Click on the hamburger menu at the top left corner of the console’s main dashboard.

Choosing User Settings.

![Alt Text](/pics/8.png)

Copying our user OCID.

![Alt Text](/pics/9.png)

In env.sh, paste your user OCID in its designated position.

#### Uploading API Key to OCI

Change directory into '../.oci'

```sh
cd ../.oci
```

Copy the oci_api_key_public.pem to your clipboard to copy the contents of the file containing your API public key.

```sh
pbcopy < oci_api_key_public.pem
```

Return to the OCI Console, and click on the blue button that reads Add Public Key.

![Alt Text](/pics/11.png)

Paste your API public key into the field, and click Add.

![Alt Text](/pics/12.png)

Under the API Keys section, find the resulting fingerprint

![Alt Text](/pics/13.png)


You are now authenticated to use Terraform with your OCI tenancy!!! 


## Save Environment Variables

Run this command to save environment variables to command line interface instance 
```sh
source env.sh
```

## Clean Terraform Script

Run these few commands to clean up Terraform repository to make sure no elements of previous deployments are needed.
```sh
rm -rf .terraform
```
```sh
rm -f terraform.tfstate
```
```sh
rm -f terraform.tfstate.backup
```


## Run Terraform Script
Initialize the Terraform project 

```sh
terraform init
```

Plan the changes to your Terraform project

```sh
terraform plan \
  -var 'input_service=adw' \
  -var 'input_service_name=db1'
```

Apply changes to your Terraform project. The variable "input_service" will either be "atp", standing for Autonomous Transaction Processing or "adw", standing for Autonomous Data Warehouse. The variable "input_service_name" will be the name for the Autonomous Transaction Processing or Autonomous Data Warehouse.

```sh
terraform apply \
  -var 'input_service=adw' \
  -var 'input_service_name=db1'
```


## Frequently Asked Questions

### How can I customize my resources?

This Terraform project currently has default attributes that can be changed easily inside vars-root.tf. For example, you can change the display name of the Frontend (Public) instance simply by replacing the word "Bastion_Instance"

### How come I receive this error upon applying Terraform?

```
* module.compute.oci_core_instance.PrivateInstance: 1 error(s) occurred:

* oci_core_instance.PrivateInstance: Service error:NotAuthorizedOrNotFound. Image can't be launched, reason: no subscription found
```

#### Make Developer Image

There should be a value for the variable "TF_VAR_developer_image_ocid"; however, to double check if it's correct, please make a Compute Instance with the Oracle Developer Image and copy it's OCID

Return to the OCI Console and create a Compute Instance.

![Alt Text](/pics/16.png)

Change the image source

![Alt Text](/pics/17.png)

Select the Oracle Images tab and select Developer Image. Then hit the Create Instance button 

![Alt Text](/pics/18.png)


#### Replacing Developer Image OCID if needed

Click on Published Image: OL Developer Image

![Alt Text](/pics/19.png)

Copy the OCID 

![Alt Text](/pics/20.png)

In env.sh, paste your tenancy OCID in its designated position.


#### [Important] Terminate the created instance to FREE UP SPACE

All tenancies start with limited service limits. Make sure to delete the instance you've just obtained the developer image OCID from 

![Alt Text](/pics/21.png)
