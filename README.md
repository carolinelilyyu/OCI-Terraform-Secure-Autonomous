## Welcome

## Quickstart

### Install Terraform
https://www.terraform.io/downloads.html

### Customize Environment Variables
Sign into your OCI tenancy using your OCI credentials (tenancy name, username, and password)

Upon entering the OCI Console, hover your mouse over the user menu in the top right corner. From the resulting drop-down list, and click on Tenancy: <your tenancy's name>.

![1](https://caroline.l.yu%40oracle.com@alm.oraclecorp.com/natd-soleng/s/natd-soleng_citizens_19980/scm/Repo.git/README pics/1.png)


Run this command to save environment variables to command line interface instance 
```sh
source env.sh
```

### Uploading API Key to OCI

### Run Terraform Script
First, change directory to "Repo/terraform"

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


