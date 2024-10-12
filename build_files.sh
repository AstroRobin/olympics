#!/bin/bash

# Exit immediately if any command fails
set -e

# Install project dependencies from the requirements.txt file
pip install -r requirements.txt

# Run Django management commands (e.g., migrations and collectstatic)
python manage.py migrate --noinput  # Apply database migrations
python manage.py collectstatic --noinput  # Collect static files