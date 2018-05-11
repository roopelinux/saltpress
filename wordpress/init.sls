#Made by Roope Varttila 2018

# Get the tervapallo

getwordpress:
  cmd.run:
    - name: wget https://wordpress.org/latest.tar.gz -P /var/www/html/

# Unpack the tervapallo and some file management the easy way (might get fixed someday)
# Thanks Miikkb for the archive_format-help - https://github.com/Miikkb/nextcloudwithsalt/blob/master/init.sls

tarwordpress:
  archive.extracted:
    - name: /var/www/html/wordpress    
    - source: /var/www/html/latest.tar.gz
    - archive_format: tar

cptocorrectplace:
  cmd.run:
    - name: sudo mv /var/www/html/wordpress/wordpress/* /var/www/html/

rmuselessdirectory:
  cmd.run:
    - name: sudo rm -r /var/www/html/wordpress

rmtar:
  cmd.run:
    - name: sudo rm latest.tar.gz

rmapacheindex:
  cmd.run:
    - name: sudo rm /var/www/html/index.html

