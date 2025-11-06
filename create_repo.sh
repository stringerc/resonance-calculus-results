#!/bin/bash
# Create GitHub repository using API

REPO_NAME="resonance-calculus-results"
GITHUB_USER="stringerc"
DESCRIPTION="Comprehensive performance analysis and results from Resonance Calculus implementation"

# Try to get token from various sources
TOKEN=""
if [ -n "$GITHUB_TOKEN" ]; then
  TOKEN="$GITHUB_TOKEN"
elif [ -f ~/.github_token ]; then
  TOKEN=$(cat ~/.github_token)
fi

if [ -z "$TOKEN" ]; then
  echo "⚠️  GitHub token not found in environment or ~/.github_token"
  echo "Please create the repository manually at: https://github.com/new"
  echo "Or set GITHUB_TOKEN environment variable"
  exit 1
fi

# Create repository
echo "Creating repository: $GITHUB_USER/$REPO_NAME"
RESPONSE=$(curl -s -X POST \
  -H "Authorization: token $TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d "{\"name\":\"$REPO_NAME\",\"description\":\"$DESCRIPTION\",\"private\":false}")

if echo "$RESPONSE" | grep -q '"id"'; then
  echo "✅ Repository created successfully!"
  echo "Repository URL: https://github.com/$GITHUB_USER/$REPO_NAME"
else
  echo "❌ Failed to create repository"
  echo "Response: $RESPONSE"
  exit 1
fi
