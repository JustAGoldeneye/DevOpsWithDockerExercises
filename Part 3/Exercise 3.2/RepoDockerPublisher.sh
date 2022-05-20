#!/bin/sh

gh_owner=`cat ./gh_owner.txt`
gh_repo=`cat ./gh_repo.txt`
dc_user=`cat ./dc_user.txt` 
dc_password=`cat ./dc_password.txt` 
dc_repo=`cat ./dc_repo.txt`

echo https://github.com/$gh_owner/$gh_repo.git
git clone https://github.com/$gh_owner/$gh_repo.git
cd $gh_repo
docker login --username=$dc_user --password=$dc_password
docker image build -t $dc_user/$dc_repo .
docker push $dc_user/$dc_repo