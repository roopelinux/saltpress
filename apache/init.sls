#Made by Roope Varttila 2018

# Install Apache and php-mod for it

install_ap:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-php

# Enable the rewrite-mod that is needed for Wordpress.

/etc/apache2/mods-enabled/rewrite.load:
  file.symlink:
    - target: ../mods-available/rewrite.load

# Restart Apache

apache2restart2:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/rewrite.load
