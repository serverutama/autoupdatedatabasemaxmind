#!/bin/bash

# Direktori tempat file GeoIP disimpan
GEOIP_DIR="/home/data/geo"
cd $GEOIP_DIR

# Lisensi MaxMind Anda
LICENSE_KEY="YOUR_LICENSE_KEY"

# URL untuk mengunduh file terbaru
URL_ASN="https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-ASN&license_key=$LICENSE_KEY&suffix=tar.gz"
URL_CITY="https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=$LICENSE_KEY&suffix=tar.gz"
URL_COUNTRY="https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country&license_key=$LICENSE_KEY&suffix=tar.gz"

# Mengunduh dan mengekstrak file ASN
wget "$URL_ASN" -O GeoLite2-ASN.tar.gz
tar -xvzf GeoLite2-ASN.tar.gz --strip-components=1

# Mengunduh dan mengekstrak file City
wget "$URL_CITY" -O GeoLite2-City.tar.gz
tar -xvzf GeoLite2-City.tar.gz --strip-components=1

# Mengunduh dan mengekstrak file Country
wget "$URL_COUNTRY" -O GeoLite2-Country.tar.gz
tar -xvzf GeoLite2-Country.tar.gz --strip-components=1

# Hapus file arsip setelah ekstraksi
rm *.tar.gz

echo "Pembaruan MaxMind selesai!"
