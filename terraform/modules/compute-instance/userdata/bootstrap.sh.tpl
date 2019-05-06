#!/bin/sh
echo 'This compute instance was provisioned by Terraform.' >> /tmp/motd
mkdir /home/opc/.oci/
chmod 700 /home/opc/.oci
chown -R opc:opc /home/opc/.oci
cd /home/opc/.oci/
touch /home/opc/.oci/oci_private_key.pem
chmod 700 /home/opc/.oci/oci_private_key.pem 
echo "${oci_private_key}" >> /home/opc/.oci/oci_private_key.pem
touch /home/opc/.oci/oci_public_key.pem
chmod 700 /home/opc/.oci/oci_public_key.pem 
echo "${oci_public_key}" >> oci_public_key.pem
touch /home/opc/.oci/config
chmod 700 /home/opc/.oci/config
echo "[DEFAULT]
user=${user_ocid}
fingerprint=${fingerprint}
key_file=/home/opc/.oci/oci_private_key.pem
tenancy=${tenancy_ocid}
region=${region}
" >> /home/opc/.oci/config
if [ ${input_service} = "atp" ]
then
	echo "/usr/bin/oci --config-file /home/opc/.oci/config db autonomous-database create --compartment-id ${compartment_ocid} --db-name atp${input_service_name} --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password Hell0W0rld##" >> /home/opc/.oci/script.sh
	oci setup repair-file-permissions --file /home/opc/.oci/config 
	oci setup repair-file-permissions --file /home/opc/.oci/oci_private_key.pem 
	chown -R opc:opc /home/opc/.oci
	/usr/bin/oci --config-file /home/opc/.oci/config db autonomous-database create --compartment-id ${compartment_ocid} --db-name atp${input_service_name} --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password Hell0W0rld##
elif [ ${input_service} = "adw" ]
then
	echo "/usr/bin/oci --config-file /home/opc/.oci/config db autonomous-data-warehouse create --compartment-id ${compartment_ocid} --db-name adw${input_service_name} --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password Hell0W0rld##" >> /home/opc/.oci/script.sh
	oci setup repair-file-permissions --file /home/opc/.oci/config 
	oci setup repair-file-permissions --file /home/opc/.oci/oci_private_key.pem 
	chown -R opc:opc /home/opc/.oci
	/usr/bin/oci --config-file /home/opc/.oci/config db autonomous-data-warehouse create --compartment-id ${compartment_ocid} --db-name adw${input_service_name} --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password Hell0W0rld##
else
	echo "did not specify which resource to create" >> /home/opc/.oci/script.sh
fi
