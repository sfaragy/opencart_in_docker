FROM php:8.3-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    zlib1g-dev \
    libzip-dev \
    zip \
    unzip \
    curl \
    libmcrypt-dev \
    git \
    && pecl install mcrypt \
    && docker-php-ext-enable mcrypt \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install \
    pdo_mysql \
    mysqli \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    zip \
    intl

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /var/www/html/opencart

# Copy application source
COPY ./src /var/www/html/opencart

# Set permissions
RUN chown -R www-data:www-data /var/www/html/opencart

EXPOSE 9000

CMD ["php-fpm"]
