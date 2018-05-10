debconf-utils:
  pkg.installed

mysqlroot:
  debconf.set:
    - data:
    'mysql-server/root_password': {'type': 'password', 'value': 'testiPASSU123'}
    'mysql-server/root_password_again': {'type': 'password', 'value': 'testiPASSU123'}

install_mysql:
  pkg.installed
    - pkgs:
      - mysql-server
      - mysql-client

#MOVE PASSWORD TO A PILLAR IF NEEDED
