# Roope Varttila 2018
# Massive thanks to:
# Miikka Valtonen - https://github.com/Miikkb/nextcloudwithsalt/blob/master/init.sls
# Tero Karvinen - http://terokarvinen.com/2018/mysql-automatic-install-with-salt-preseed-database-root-password

# For preseeding

debconf-utils:
  pkg.installed

# Preseeding the mysql installation

mysqlroot:
  debconf.set:
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': 'testi123'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'testi123'}

# Actual installation of mysql

mysql-server:
  pkg.installed

mysql-client:
  pkg.installed

# Making a database for wordpress, the mysql-wordpress users password is "wordpress"

#mysql1:
#  mysql_query.run:
#    - database: mysql
#    - connection_user: root
#    - connection_pass: testi123
#    - connection_host: localhost
#    - connection_charset: utf8
#    - query: "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';"

#mysql2:
#  mysql_query.run:
#    - database: mysql
#    - connection_user: root
#    - connection_pass: testi123
#    - connection_host: localhost
#    - connection_charset: utf8
#    - query: "CREATE DATABASE IF NOT EXISTS wordpress;"

#mysql3:
#  mysql_query.run:
#    - database: mysql
#    - connection_user: root
#    - connection_pass: testi123
#    - connection_host: localhost
#    - connection_charset: utf8
#- query: "GRANT ALL PRIVILEGES ON wordpress.* to 'wordpress'@'localhost';"

