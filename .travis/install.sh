#!/bin/bash
set -e
set -x

git clone https://github.com/$TRAVIS_REPO_SLUG.git $TRAVIS_REPO_SLUG
cd $TRAVIS_REPO_SLUG
git checkout -qf $TRAVIS_COMMIT
git fsck --full
