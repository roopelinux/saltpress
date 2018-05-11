# Making a database for wordpress, the mysql-wordpress users password is "wordpress"
# ROOT PASSWORD IS VISIBLE TO MINIONS - MOVE TO PILLARS IF NEEDED

database1:
  mysql_query.run:
    - database: mysql
    - connection_user: root
    - connection_pass: testi123
    - connection_host: localhost
    - connection_charset: utf8
    - query: "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';"

database2:
  mysql_query.run:
    - database: mysql
    - connection_user: root
    - connection_pass: testi123
    - connection_host: localhost
    - connection_charset: utf8
    - query: "CREATE DATABASE IF NOT EXISTS wordpress;"

database3:
  mysql_query.run:
    - database: mysql
    - connection_user: root
    - connection_pass: testi123
    - connection_host: localhost
    - connection_charset: utf8
    - query: "GRANT ALL PRIVILEGES ON wordpress.* to 'wordpress'@'localhost';"

database4:
  mysql_query.run:
    - database: mysql
    - connection_user: root
    - connection_pass: testi123
    - connection_host: localhost
    - connection_charset: utf8
    - query: "FLUSH PRIVILEGES;"

