#!/bin/sh

sudo chmod 777 /etc/motd
echo 'This instance was provisioned by Terraform.' >> /etc/motd
sudo mkdir /home/opc/.oci/
cd /home/opc/.oci/
sudo touch oci_private_key.pem
sudo chmod 777 oci_private_key.pem 
sudo echo "-----BEGIN RSA PRIVATE KEY-----
MIIEpgIBAAKCAQEA5VjBLqYlf5PfaikqYjDZI5sSX2/rAJMdQhLPFLxZLNnVht6i
RsETBY8VGeM6ajYOOZhkNxh964rED2V9JpJcJ7fW1bcmpPWCChm1AdaZDA3Fb6rQ
IFIry/7UbPqXtStM8aAbgjEgwAy0u6fgN4h9p5WH6Z1lYfhXTHOCNTbgvSTa52O5
Vrxgu0cFDtkInWarOyjXeo7dpgbJt8Hxd7c8mozSsnErJn4CakVbddtzYldRb9ER
vde2t+xizaW/pT2xBrE0Dvv50TDTXa50X6M4w3LfvDMLX1ix52dLyqz0A7f8Oyl1
AypJZu9LLTikXqggK4amXYOOJSBiP5qN/mhQ6QIDAQABAoIBAQCbBVT+vRsXktIu
pciaOj5rTMQsci+8YbQjFyeV8oGsSUmFMjMp9BNxbHds2iR/6i3PTGxguVNTxKYl
agof6koUJrU2G+gpFDFjtmCc73rfpOdRRXoMfr5P0t2vE+s7cBtAL2Koq6Bhb7Uy
KpTptH6Kqg4GIHeIsx3+9QyL/54E+f7SVxG8D/Pw5dQjfzm+F15dNZpQG++VCfEL
H7nHv2zOySBAoN4atwJryiI2WeCuPid04EjQ+mtzaAbeaYMmMTwaeajHDFAkTish
oMULKiMziMp1r36qUTDIOjYBxXRgghPoPwl5Bnh+BDzKOZalCf4tfGufv0gPEIPW
vURdmbSpAoGBAPOzjPoeTaLml3Jh1RKm67cdSA1JERhDgk+8jcxT50GleOz6ZvK7
w3AHoCvMOAkz4Q7HB5EEyjrqdbrY1VZ2glgO6lrgMsmXWDzTT7ZDQgQa14oImgnh
IISb4bqcn/pI2v9m4ESj9G67yWgQs5JoY7dbCszuGgQuaUNlXmqG9R5DAoGBAPDr
wHB95gJmZmGUvFEOV2AK8jXqlL0de9qK+1fq567G23nw8glgv2tuEq/9P75S2oFh
DC7lWQBrygXf8CD4Jv9wzYWOUZcLCLUlwe4ilF8ITskeKdmGuh48+dcPZtmt+Szl
vqTRumqoBemvbrNDUj+9br9k1NVvnwFQd7y4xp9jAoGBAOSryxH7E1BS3TLoF94r
oKyvHifRMug4mHMnc0qSREH1+fUrtSP5CZb6oNHYC5CfDIQoP7JU80m7LQNJaU17
YC0uubrR+vXsPFC+22Ij1DMz2KHeFmREyZWFC5dmVjqs2EmlB7WAvuCU9pTebxFn
QIIRPJ40oVbhEca6vJBq2GAvAoGBAKwtgEGk6F3sutygRJmVK0K7b/CyboxdZueA
DjL98YgKHE6gsQmcuBDaAMb/sa+eXQS7y840IJBZeG8MZPva/VvvTSJW3N6ahyWX
D2rWEb19HXlEclpAnAECSPe2zSVi3UKGCuKV9KlG3brtoqrAwSZGhsCIGkdTV4rD
7F7WmzTLAoGBAIOLs7NKeLO19Rz+6NN7EG182tVwHtYq8FxtRSGitgavNDjlX229
Hl4odD3U1meS8EOoJ5zoygH2tREFzEwqvc9XxFMMUhjMBpMh2VlkvL7fHljXeWDk
EVc9mfa61Bwt1mrps5hG5uxdcOkh8JaokyLEYhMQP8+WusRmXI+iaV5+
-----END RSA PRIVATE KEY-----
" >> oci_private_key.pem
sudo touch oci_public_key.pem
sudo chmod 777 oci_public_key.pem 
sudo echo "-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5VjBLqYlf5PfaikqYjDZ
I5sSX2/rAJMdQhLPFLxZLNnVht6iRsETBY8VGeM6ajYOOZhkNxh964rED2V9JpJc
J7fW1bcmpPWCChm1AdaZDA3Fb6rQIFIry/7UbPqXtStM8aAbgjEgwAy0u6fgN4h9
p5WH6Z1lYfhXTHOCNTbgvSTa52O5Vrxgu0cFDtkInWarOyjXeo7dpgbJt8Hxd7c8
mozSsnErJn4CakVbddtzYldRb9ERvde2t+xizaW/pT2xBrE0Dvv50TDTXa50X6M4
w3LfvDMLX1ix52dLyqz0A7f8Oyl1AypJZu9LLTikXqggK4amXYOOJSBiP5qN/mhQ
6QIDAQAB
-----END PUBLIC KEY-----
" >> oci_public_key.pem
sudo touch config
sudo chmod 777 config
echo "[DEFAULT]
user=ocid1.user.oc1..aaaaaaaajxcm3ypgkocore6glozzxfnjemefsjgi6sbxlsjt22kh65exjb2q
fingerprint=07:df:a7:ae:8a:b2:a2:50:f5:c7:e1:f6:b1:e2:02:4e
key_file=/home/opc/.oci/oci_private_key.pem
tenancy=ocid1.tenancy.oc1..aaaaaaaa5arrzhx6wibc7iotaztfkt5bofbrfkw4x56kaplt36tat63lexgq
region=us-ashburn-1
" >> config
oci db autonomous-data-warehouse create --compartment-id ocid1.compartment.oc1..aaaaaaaaxkrmyyd6ffbggujzbfuxoirbyp7qq3h6gg77x3dtejiydxc665ha --db-name testing --cpu-core-count 1 --data-storage-size-in-tbs 126 --admin-password Hell0W0rld##
oci os bucket create --compartment-id ocid1.compartment.oc1..aaaaaaaaxkrmyyd6ffbggujzbfuxoirbyp7qq3h6gg77x3dtejiydxc665ha --name test
