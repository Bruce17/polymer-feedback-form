#!/bin/bash
set -ev

# Change to generate docs dir.
cd ${SOURCE_DIR}

# Init git in subfolder
git init
git config user.name "${GIT_NAME}"
git config user.email "${GIT_EMAIL}"

# Copy files from other folders.
yes | cp -f ../build/elements.vulcanized.html elements.vulcanized.html
yes | cp -f ../build/elements.crisper.js elements.crisper.js

# Add new files.
git add .

# Push everything back to github.
git commit -m "Deployed to Github Pages"
git push --force --quiet "https://${GITHUB_TOKEN}@${GITHUB_REF}" ${DEPLOY_BRANCH}:${TARGET_BRANCH} > /dev/null 2>&1
