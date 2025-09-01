#!/bin/bash

# Simple deployment script for GitHub Pages

echo "Building and deploying Project Dungeon Builder to GitHub Pages..."

# Build the site
echo "Building Jekyll site..."
bundle exec jekyll build

# Add all changes
git add .

# Commit with timestamp
echo "Committing changes..."
git commit -m "Update site - $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
echo "Pushing to GitHub..."
git push origin main

echo ""
echo "Deployment complete! Your site will be updated in a few minutes."
echo "Visit: https://[your-username].github.io/[your-repo-name]"