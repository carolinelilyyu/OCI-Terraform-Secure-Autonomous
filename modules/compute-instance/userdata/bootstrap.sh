#!/bin/sh
echo 'This instance was provisioned by Terraform.' >> /tmp/motd
mkdir /home/opc/.oci/
chmod 700 /home/opc/.oci
chown -R opc:opc /home/opc/.oci
cd /home/opc/.oci/
touch /home/opc/.oci/oci_private_key.pem
chmod 700 /home/opc/.oci/oci_private_key.pem 
echo "-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAtQYmaWg5p6UuuY4G+mqpIVxQCTkr1gwmiqokjC0el7v6wdFm
O8plPw1FZhErUGNSA5xlc/Oc8/U85Zv6Fs7drc0BK/f9hwORqRqExQidezETEvWS
D4ANYj7V+k95TpQk2FnHRPci5p/1jJhSZ09wicT8Vm/C2ax69oOI5nCqPhLi16B4
vXYpfCXBVDRolcSSpmkPwQ/ntNPLDs+3xXmFvNcACEyyqko5lKeC6FM0YFGmx1C1
0/Ae0aYe+HHU8RGPx/cUyWBRkqmLKFIdPYOD1xQG0ZLjI2wmBXRV0SfbgEaVdZT3
FCtXcVTTmpU+6rJaGPkqOd+KNTAOBPTC9EwcNQIDAQABAoIBAApaQ7AbidCQnc92
0+dWWj3SLbGZV2xyXXHosRZjLjC3S2vyMcqRlKC6fZGMwdFjHLmgJB0xfXRmPglT
lkXfpsXdx4dgM1uZVKc7IQSzrW3yLIkVCjlgtWM8/LfH+8QGrOTCnabQC2rtEvnr
bCsEXAdFALlgwt/4AUA/3YBwSQwrp6pQlxEQPDcM/qHgpX2h1Kga2HAjvQ8hyrfd
0vk1Co6GEu54nTJvTD+Hr32N7mkQ8hNOmHmQMGYcfVFXTjBnEZEs+k3Qu+AQjmv2
+dcUL/qp7XivWpmy05SGD8GluZWQx3bElPx7tNfzap1M/mkmY5hOJdeZXGRpJYsE
waUNV4ECgYEA5MuaDmwr3BjTxM/ejj97KCc0PFEKM3bS9/9ocyoFYJWWwcpIteFi
5HCSi2q0/o76POYviBBPt1L82KVvByTMiOFXgaGlizpAgzfcQKqOQO2BG9TD/OtO
hJf4TVpRO2WIEQrNv73xrtBChFk+NPCGNiJXAcRgplkoaou6C3zSQC0CgYEAyoxq
3PQsKV9ppBK6cCzOCneXJTKJlXJD6IfaXqDqvET87vkydMo8ZD9oXQp/nOMk7Yzv
Mh/tUO8p/yn8jVb5wk7RD9KNlEr+TvBdbCS3CIX+jeq4RX+ZlOd/kNErpZ3/eLMt
JCOiNVtidXS7De3Sv8idXeOnmWy6L57Gjlx/SSkCgYAbYW5PWYyqK2J0hDfrKBey
B3cN3NjurcKzoSI73gSEuYIwMOggtBdkpUA0ZRHCARRbY2S+0MzpcIoH10yBO1sq
6mTRg6nPDqqXyYCXUJHznTi9Puoxg2uDHLi/cRaVmCH/gB59Wtrog83iDtgN99bn
9ZYaBQlX/wWCMrSSGV8EBQKBgE2hL7vroZlhxj1qKCaiJX4Bg95v1id/GePfXaRz
DESINGDrBZmZgTfyzW8LfQmGTTr2jx6o+e3RHEl9sBwDv8nnJ11nF3hEnd9nZIb0
M2qC4KNH2MRaOWTGrS+124KoYafDFIQLXDoTAlN+H8sg4Ws72oSHok69S0bBFdyu
OuKxAoGBAIe7SyC7p1SnM1R9ANXNXKDPWaIyQokdKJlo2KQzZj3AJJGB1tCZrwK8
c8KFjYC6/OaXb+Rln9o8fotTs5IT15qMYentrrsNvett4iPZwHeW7pt2nKYl8J4b
Xs/8MLso3Ba/l9S1SPsRp+7+HGQKM8uwtx1DfSLhVVS1UBG+nFJK
-----END RSA PRIVATE KEY-----
" >> /home/opc/.oci/oci_private_key.pem
touch /home/opc/.oci/oci_public_key.pem
chmod 700 /home/opc/.oci/oci_public_key.pem 
echo "-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtQYmaWg5p6UuuY4G+mqp
IVxQCTkr1gwmiqokjC0el7v6wdFmO8plPw1FZhErUGNSA5xlc/Oc8/U85Zv6Fs7d
rc0BK/f9hwORqRqExQidezETEvWSD4ANYj7V+k95TpQk2FnHRPci5p/1jJhSZ09w
icT8Vm/C2ax69oOI5nCqPhLi16B4vXYpfCXBVDRolcSSpmkPwQ/ntNPLDs+3xXmF
vNcACEyyqko5lKeC6FM0YFGmx1C10/Ae0aYe+HHU8RGPx/cUyWBRkqmLKFIdPYOD
1xQG0ZLjI2wmBXRV0SfbgEaVdZT3FCtXcVTTmpU+6rJaGPkqOd+KNTAOBPTC9Ewc
NQIDAQAB
-----END PUBLIC KEY-----
" >> oci_public_key.pem
touch /home/opc/.oci/config
chmod 700 /home/opc/.oci/config
echo "[DEFAULT]
user=ocid1.user.oc1..aaaaaaaatfv5ry2h7cape2afatj4lcn3ywzqj6seksjmfazipzkyko3wvykq
fingerprint=f5:95:91:14:84:38:b5:3d:4c:2c:1e:e2:69:8e:33:3e
key_file=/home/opc/.oci/oci_private_key.pem
tenancy=ocid1.tenancy.oc1..aaaaaaaaqh3znnfm6hegf55s6o2ijohurcsyxasdsiqpq57z5npkseycos5q
region=us-ashburn-1
" >> /home/opc/.oci/config
oci setup repair-file-permissions --file /home/opc/.oci/config 
oci setup repair-file-permissions --file /home/opc/.oci/oci_private_key.pem 
chown -R opc:opc /home/opc/.oci
/usr/bin/oci --config-file /home/opc/.oci/config db autonomous-data-warehouse create --compartment-id ocid1.compartment.oc1..aaaaaaaahgwc3smj626ovrbsohc44go42piwhzlmmgsnjmpqkdsokam2n4eq --db-name testing --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password Hell0W0rld##
