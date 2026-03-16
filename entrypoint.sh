#!/bin/sh

# Seed the database if it doesn't exist or is empty
# (Optional: run migrations)
php artisan migrate --force --no-interaction
php artisan db:seed --force --no-interaction

# Optimizing
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Execute the main command
exec "$@"
