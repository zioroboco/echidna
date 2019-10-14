#!/bin/sh
set -e

github_deploy_key=$(cat .ssh/id_rsa)

eval "$(ssh-agent -s)"
echo "$github_deploy_key" | ssh-add -

git config --global user.email "zioroboco+release-bot@gmail.com"
git config --global user.name "release-bot"
git config --global commit.gpgsign false

npm login --registry http://verdaccio:4873

lerna version -m "chore: release" --conventional-commits --github-release --yes
lerna publish from-package --registry http://verdaccio:4873 --yes
