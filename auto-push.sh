#!/bin/bash

# Automatic Git Push Script
# This script adds all changes, commits with a timestamp, and pushes to origin

echo "🚀 Starting automatic push process..."

# Check if there are any changes
if [[ -z $(git status --porcelain) ]]; then
    echo "✅ No changes to commit. Repository is clean."
    exit 0
fi

# Add all changes
echo "📝 Adding all changes..."
git add .

# Check if there are staged changes
if [[ -z $(git diff --cached --name-only) ]]; then
    echo "⚠️  No staged changes found."
    exit 0
fi

# Get current timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Commit with timestamp
echo "💾 Committing changes..."
git commit -m "Auto-commit: $TIMESTAMP"

# Push to origin
echo "⬆️  Pushing to remote repository..."
if git push origin main; then
    echo "✅ Successfully pushed changes to remote repository!"
else
    echo "❌ Failed to push changes. Please check your connection and permissions."
    exit 1
fi

echo "🎉 Automatic push completed successfully!"
