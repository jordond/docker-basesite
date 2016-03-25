#!/bin/bash

# Available env
#
# repo   - Format '<:user>/<:repo>'
# branch - Format '<:branch> - Default 'master'
#

gitUrl="http://github.com/$repo"

git clone gitUrl /usr/src
cd /usr/src

if [ -z "$branch" ]; then
  echo "Checking out default branch"
else
  echo "Checking out $branch branch"
  git checkout $branch
fi

git pull
npm install --unsafe-perm
npm run build
npm start