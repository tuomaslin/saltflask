apache2:
   pkg.installed

python3-flask:
   pkg.installed
 
/var/www/html/index.html:
   file.managed:
    - source: salt://flask/index.html
 
/etc/apache2/mods-enabled/userdir.conf:
   file.symlink:
    - target: /etc/apache2/mods-available/userdir.conf
 
/etc/apache2/mods-enabled/userdir.load:
   file.symlink:
    - target: /etc/apache2/mods-available/userdir.load
 
/etc/skel/:
   file.recurse:
    - source: salt://flask/skel/

apache2.service:
   service.running:
    - enable: True
   watch:
    - file: /etc/apache2/mods-enabled/userdir.conf
    - file: /etc/apache2/mods-enabled/userdir.load


