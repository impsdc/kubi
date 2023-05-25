FROM php:7.4-fpm

# Install required PHP extensions
RUN docker-php-ext-install pdo_mysql bcmath

# Install NGINX
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get update && apt-get install zip unzip

# Configure NGINX
COPY docker/nginx.conf /etc/nginx/nginx.conf

# Copy the Laravel application code into the container
WORKDIR /var/www/html
COPY . .

# Install the application's dependencies
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN composer update
RUN composer install --optimize-autoloader --no-dev

# Set permissions for Laravel directories
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port 80 for NGINX
EXPOSE 80
# Start NGINX and PHP-FPM
CMD service nginx start && php-fpm