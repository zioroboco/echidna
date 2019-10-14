#!/bin/sh
set -e

github_deploy_key=$(cat .ssh/id_rsa)

eval "$(ssh-agent -s)"
echo "$github_deploy_key" | ssh-add -

lerna version --conventional-commits --yes
