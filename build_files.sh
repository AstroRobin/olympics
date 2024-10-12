#!/bin/bash

# Exit immediately if any command fails
#set -e
# Install SQLite development libraries for Python
apt-get update && apt-get install -y sqlite3 libsqlite3-dev

# Install project dependencies from the requirements.txt file
python3 -m pip install -r requirements.txt

# Run Django management commands (e.g., migrations and collectstatic)
#echo "Migrating over database..."
#python3 manage.py makemigrations --noinput
#python3 manage.py migrate --noinput  # Apply database migrations

echo "Collect static files..."
python3 manage.py collectstatic --noinput  # Collect static files