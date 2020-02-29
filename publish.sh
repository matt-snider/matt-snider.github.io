#!/bin/sh

function important() {
    echo -e "\033[0;32m$1\033[0m";
}

important "Deploying updates to GitHub Pages..."

# Build site
important "Building the site..."
hugo
important "Done."


# Make commit and push
cd public/
important "Committing changes..."
git add .
git commit -m "Rebuilding docs (`date`)"
important "Done"

important "Pushing..."
git push

cd ..
important "All done."

