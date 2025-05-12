#!/usr/bin/env bash
#
# Upload Files to GitHub
#

echo "GitHub Upload Script"
read -p "Please enter file path/name: " FP
read -p "Please enter release name: " RELNAME

REPO="Envoy-Z-Lab/Releases"
FN="$(basename "$FP")"

echo -e "Started uploading file to GitHub release '$RELNAME' in repo $REPO..."

# Create release (skip if exists)
gh release view "$RELNAME" --repo "$REPO" &> /dev/null || gh release create "$RELNAME" --generate-notes --repo "$REPO"

# Upload file
gh release upload --clobber "$RELNAME" "$FP" --repo "$REPO"
