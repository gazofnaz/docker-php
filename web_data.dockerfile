# FROM Comes first. Says which image this file is based on
FROM busybox
MAINTAINER me@test.com
ADD var/www/html/index.php /var/www/html/
ADD var/www/html/static.html /var/www/html/
ADD etc/nginx/conf.d/default.conf /etc/nginx/conf.d/            
VOLUME ["/etc/nginx/conf.d/", "/var/www/html/"]
