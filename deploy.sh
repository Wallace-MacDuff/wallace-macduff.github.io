#!/bin/bash

echo "🚜 Firing up the tractors... packaging files..."
git add .

# This pauses the script and asks for your note
echo ""
echo "📝 What did you change? (Press Enter to just use 'Automated farm update')"
read -p "> " COMMIT_MSG

# If you just hit Enter and leave it blank, it falls back to the default
if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Automated farm update"
fi

echo ""
echo "📝 Writing to the MacDuff log book..."
git commit -m "$COMMIT_MSG"

echo "🚀 Shipping the files to GitHub..."
git push

echo "✅ Done! The MacDuff Farm is live."