install_ap:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-php

apache2restart:
  service.running:
    - name: apache2
