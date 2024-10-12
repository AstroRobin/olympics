#!/bin/bash

# Exit immediately if any command fails
#set -e

# Install project dependencies from the requirements.txt file
python3 -m pip install -r requirements.txt

# Run Django management commands (e.g., migrations and collectstatic)
#echo "Migrating over database..."
#python3 manage.py makemigrations --noinput
#python3 manage.py migrate --noinput  # Apply database migrations

echo "Collect static files..."
python3 manage.py collectstatic --noinput  # Collect static files