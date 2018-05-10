# Making a database for wordpress, the mysql-wordpress users password is "wordpress"

mysql1:
  mysql_query.run:
    - database: mysql
    - connection_user: root
    - connection_pass: testi123
    - connection_host: localhost
    - connection_charset: utf8
    - query: "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';"

mysql2:
  mysql_query.run:
    - database: mysql
    - connection_user: root
    - connection_pass: testi123
    - connection_host: localhost
    - connection_charset: utf8
    - query: "CREATE DATABASE IF NOT EXISTS wordpress;"

mysql3:
  mysql_query.run:
    - database: mysql
    - connection_user: root
    - connection_pass: testi123
    - connection_host: localhost
    - connection_charset: utf8
    - query: "GRANT ALL PRIVILEGES ON wordpress.* to 'wordpress'@'localhost';"

