#!/bin/sh

openssl req -x509 -nodes -days 365 \
-subj "/C=RU/ST=Moscow/O=Ft_servicesCompany, Inc./CN=ft_services.com" \
-addext "subjectAltName=DNS:gdrive.com" \
-newkey rsa:2048 \
-keyout /gdrive.key \
-out /gdrive.crt;

# [req] -  to specify we want to use -x509
# [-x509] -  to specify we want to create a self-signed certificate
#            instead of generating a certificate signing request.

# [-nodes] - makes it so that we skip the option
#            to secure our certificate with a passphrase,
#            so that nginx can read it.

# [-days] - specifies how long  the certificate would be valid for,
#          which is 365 days.

# [-subj “/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com"] - this allows us
#          to specify subject without filling in prompts.
#          /C for country, /ST for state, /O for organization,
#          and /CN for common name.

# [-addext “subjectAltName=DNS:mydomain.com"] - which adds additional attributes
#          to our certificate which is needed to make it a valid certificate seen
#          by both our browser and local machine.

# [-newrsa rsa:2048] - specifies that we want to generate both a new certificate
#                      and a new key with an RSA key of 2048 bits.

# [-keyout /etc/.../yourfile.key] - specifies the location of the output .key file

# [-out /etc/.../yourfile.crt] - specifies the location of the output .crt file.

