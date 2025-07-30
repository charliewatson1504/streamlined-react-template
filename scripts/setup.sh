#!/bin/bash

# Streamlined React Template Setup Script
# Usage: ./scripts/setup.sh <project-name>

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_step() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if project name is provided
if [ -z "$1" ]; then
    print_error "Please provide a project name"
    echo "Usage: ./scripts/setup.sh <project-name>"
    exit 1
fi

PROJECT_NAME="$1"

print_step "Setting up your React project: $PROJECT_NAME"

# Validate project name (basic validation)
if [[ ! "$PROJECT_NAME" =~ ^[a-zA-Z0-9_-]+$ ]]; then
    print_error "Project name can only contain letters, numbers, hyphens, and underscores"
    exit 1
fi

# Replace PROJECT_NAME in package.json
print_step "Updating package.json..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/PROJECT_NAME/$PROJECT_NAME/g" package.json
else
    # Linux
    sed -i "s/PROJECT_NAME/$PROJECT_NAME/g" package.json
fi

# Replace PROJECT_NAME in HTML title
print_step "Updating HTML title..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/PROJECT_NAME/$PROJECT_NAME/g" public/index.html
else
    # Linux
    sed -i "s/PROJECT_NAME/$PROJECT_NAME/g" public/index.html
fi

# Replace PROJECT_NAME in App.jsx
print_step "Updating App component..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/PROJECT_NAME/$PROJECT_NAME/g" src/App.jsx
else
    # Linux
    sed -i "s/PROJECT_NAME/$PROJECT_NAME/g" src/App.jsx
fi

# Initialize fresh git repository
print_step "Initializing fresh git repository..."
rm -rf .git
git init
git add .
git commit -m "Initial commit: $PROJECT_NAME"

# Remove the setup script (it's no longer needed)
print_step "Cleaning up setup files..."
rm -rf scripts/
rm -f PROJECT_INSTRUCTIONS.md

print_success "Setup complete! 🎉"
echo
echo "Next steps:"
echo "  1. Install dependencies:    npm install"
echo "  2. Start development:       npm run dev"
echo "  3. Build for production:    npm run build"
echo
echo "Your React app '$PROJECT_NAME' is ready to go!"
