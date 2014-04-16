#!/bin/bash

git config credential.helper "store --file=.git/credentials"
echo "https://${TOKEN}:@github.com" > .git/credentials
git config user.name "sniksnp"
git add doc/html
git commit -m "Automatic push from Travis"
git push
