#!/bin/bash

# Agar message na diya ho toh script error de gi
if [ -z "$1" ]; then
  echo "Galti: Commit message likhna zaroori hai!"
  echo "Usage: ./quick_push.sh \"your message here\""
  exit 1
fi

echo "1. Files stage ho rahi hain..."
git add .

echo "2. Commit ban raha hai..."
git commit -m "$1"

echo "3. GitHub par push ho raha hai..."
git push

echo "== SUCCESS: Code GitHub par push ho gaya! =="
