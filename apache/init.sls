install_ap:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-php

apache2restart:
  service.running:
    - name: apache2

/etc/apache2/mods-enabled/userdir.load:
  file.symlink:
    - target: ../mods-available/rewrite.load

apache2restart2:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/rewrite.load
