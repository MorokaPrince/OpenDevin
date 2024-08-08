#!/bin/bash

# Create necessary directories
mkdir -p OpenDevin/backend/OpenDevin
mkdir -p OpenDevin/backend/app/migrations
mkdir -p OpenDevin/frontend/public
mkdir -p OpenDevin/frontend/src/assets
mkdir -p OpenDevin/frontend/src/components

# Backend files
touch OpenDevin/backend/manage.py
touch OpenDevin/backend/requirements.txt
touch OpenDevin/backend/Dockerfile
touch OpenDevin/backend/.env

# Backend OpenDevin module files
touch OpenDevin/backend/OpenDevin/__init__.py
touch OpenDevin/backend/OpenDevin/settings.py
touch OpenDevin/backend/OpenDevin/urls.py
touch OpenDevin/backend/OpenDevin/wsgi.py
touch OpenDevin/backend/OpenDevin/asgi.py

# Backend app module files
touch OpenDevin/backend/app/__init__.py
touch OpenDevin/backend/app/models.py
touch OpenDevin/backend/app/views.py
touch OpenDevin/backend/app/urls.py
touch OpenDevin/backend/app/serializers.py
touch OpenDevin/backend/app/migrations/__init__.py

# Frontend files
FRONTEND_EXTENSION="jsx"
if [ -f "OpenDevin/frontend/src/App.tsx" ]; then
    FRONTEND_EXTENSION="tsx"
fi

touch OpenDevin/frontend/public/index.html
touch OpenDevin/frontend/src/App.$FRONTEND_EXTENSION
touch OpenDevin/frontend/src/main.js
touch OpenDevin/frontend/.env
touch OpenDevin/frontend/vite.config.js
touch OpenDevin/frontend/package.json

# Create Docker Compose file and other root-level files
touch OpenDevin/docker-compose.yml
touch OpenDevin/.gitignore
touch OpenDevin/README.md

echo "OpenDevin project structure has been created successfully."
