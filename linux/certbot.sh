#!/bin/bash
# sudo apt-get update
# sudo apt install openssl
# sudo apt-get install certbot
certbot certonly --manual --preferred-challenges=dns --preferred-chain="ISRG Root X1"
# sudo ls -laR /etc/letsencrypt/live/
