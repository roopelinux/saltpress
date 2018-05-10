#Made by Roope Varttila 2018

# Get the tervapallo

getwordpress:
  cmd.run:
    - name: https://wordpress.org/latest.tar.gz -P /var/www/html/

# Unpack the tervapallo

tarwordpress:
  archive.extracted:
    - name: /var/www/html/    
    - source: /var/www/html/latest.tar.gz
    - archive_format: tar


