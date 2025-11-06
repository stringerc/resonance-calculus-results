#!/bin/bash
# Setup script for creating GitHub repository and pushing Resonance results

set -e

REPO_NAME="resonance-calculus-results"
REPO_DESCRIPTION="Comprehensive performance analysis and results from Resonance Calculus implementation"

echo "🚀 Setting up GitHub repository for Resonance Calculus Results"
echo "=============================================================="
echo ""

# Check if remote already exists
if git remote get-url origin >/dev/null 2>&1; then
    echo "✅ Remote 'origin' already configured"
    REMOTE_URL=$(git remote get-url origin)
    echo "   Current remote: $REMOTE_URL"
    echo ""
    read -p "Do you want to use the existing remote? (y/n): " use_existing
    if [ "$use_existing" != "y" ]; then
        echo "Please create a new repository on GitHub and run:"
        echo "  git remote add origin https://github.com/YOUR_USERNAME/$REPO_NAME.git"
        echo "  git push -u origin main"
        exit 0
    fi
else
    echo "📦 Creating new GitHub repository..."
    echo ""
    echo "Please create a new repository on GitHub:"
    echo "  1. Go to: https://github.com/new"
    echo "  2. Repository name: $REPO_NAME"
    echo "  3. Description: $REPO_DESCRIPTION"
    echo "  4. Set to Public or Private (your choice)"
    echo "  5. DO NOT initialize with README, .gitignore, or license"
    echo "  6. Click 'Create repository'"
    echo ""
    read -p "Enter your GitHub username: " GITHUB_USER
    read -p "Enter repository name (default: $REPO_NAME): " REPO_INPUT
    REPO_NAME=${REPO_INPUT:-$REPO_NAME}
    
    REMOTE_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"
    echo ""
    echo "Adding remote: $REMOTE_URL"
    git remote add origin "$REMOTE_URL"
fi

echo ""
echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Successfully pushed to GitHub!"
echo "   Repository URL: $REMOTE_URL"
echo ""
echo "🌐 View your repository at:"
echo "   https://github.com/$(echo $REMOTE_URL | sed 's|.*github.com/||' | sed 's|\.git||')"

