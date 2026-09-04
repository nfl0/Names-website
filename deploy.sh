#!/bin/sh
# Build a clean deploy directory (site files only) and push it to
# Cloudflare Pages. Keeps non-site files (README, .git, scripts) out of
# the deployment, which `wrangler pages deploy` would otherwise include.
set -e
cd "$(dirname "$0")"
rm -rf .deploy
mkdir -p .deploy/fonts
cp index.html privacy.html 404.html .deploy/
cp fonts/*.woff2 .deploy/fonts/
wrangler pages deploy .deploy --project-name=coppice-names --branch=main --commit-dirty=true
rm -rf .deploy
