#!/bash/bin

apt-get update

apt-get install -y salt-minion

mkdir /srv/salt

sudo salt-call --local state.highstate --file-root .

mv wordpress/wp-config.php /var/www/html/

firefox localhost
