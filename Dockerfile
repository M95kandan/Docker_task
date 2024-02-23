FROM alpine:3.14

# Install Apache and required tools
RUN apk --no-cache add apache2-utils apache2

# Copy index.html to the default web directory
COPY index.html /var/www/localhost/htdocs/

# Expose port 80 for HTTP
EXPOSE 80

# Start httpd server in the foreground
CMD ["httpd", "-D", "FOREGROUND"]

