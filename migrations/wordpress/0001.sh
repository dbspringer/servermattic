if [ -e /var/www/wp-config.php ]; then
  echo "WordPress already present, aborting."
  exit 1
fi

if [ ! -d /var/www ]; then
  mkdir /var/www
fi

cd /tmp
TIME=$(date +%s)
mkdir wp-$TIME
cd wp-$TIME
wget https://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz
cd wordpress
cp -R * /var/www
echo "WordPress installed to /var/www"

