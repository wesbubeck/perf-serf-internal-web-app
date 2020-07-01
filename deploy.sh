#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# update correct user-name and repo-name and uncomment line below
git push -f git@github.com:wesbubeck/perf-serf-internal-web-app.git master:gh-pages

cd -