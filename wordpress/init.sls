#Made by Roope Varttila 2018

# Get the tervapallo

getwordpress:
  cmd.run:
    - name: wget https://wordpress.org/latest.tar.gz -P /var/www/html/

# Unpack the tervapallo

tarwordpress:
  archive.extracted:
    - name: /var/www/html/wordpress    
    - source: /var/www/html/latest.tar.gz
    - archive_format: tar


