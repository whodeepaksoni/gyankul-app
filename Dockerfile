# Apache official image
FROM httpd:2.4

# Copy index.html to Apache document root
COPY index.html /usr/local/apache2/htdocs/

# Apache default port
EXPOSE 80
