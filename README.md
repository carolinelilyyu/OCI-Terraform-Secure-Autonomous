## Welcome

## Quickstart

### Install Terraform
https://www.terraform.io/downloads.html

### Customize Environment Variables
Sign into your OCI tenancy using your OCI credentials (tenancy name, username, and password)

Upon entering the OCI Console, hover your mouse over the user menu in the top right corner. From the resulting drop-down list, and click on Tenancy: <your tenancy's name>.

#### Replacing Tenancy OCID environment variable

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

Change directory into 'Repo/.oci'

```sh
cd Repo/.oci
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


### Save Environment Variables
Run this command to save environment variables to command line interface instance 
```sh
source env.sh
```

### Run Terraform Script
First, change directory to "../terraform"

```sh
cd ../terraform
```

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


