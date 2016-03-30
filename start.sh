#!/bin/bash

# Available env
#
# repo   - Format '<:user>/<:repo>'
# branch - Format '<:branch> - Default 'master'
gitUrl="https://github.com/$repo"

echo "Cloning $gitUrl"

git clone $gitUrl $SOURCE_DIR
cd $SOURCE_DIR

if [ -z "$branch" ]; then
  echo "Checking out default branch"
else
  echo "Checking out $branch branch"
  git checkout $branch
fi

/build-project

npm start