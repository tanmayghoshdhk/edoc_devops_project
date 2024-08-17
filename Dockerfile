# Use the official PHP image with Apache
FROM php:7.3-apache

# Install MySQLi extension
RUN docker-php-ext-install mysqli

# Copy the PHP code to the Apache web directory
COPY html/ /var/www/html/

# Set up the working directory
WORKDIR /var/www/html/

# Change the ownership of the files to www-data user
RUN chown -R www-data:www-data /var/www/html

# Expose a different port, for example, port 8080
EXPOSE 8081

