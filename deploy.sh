#!/usr/bin/env sh
npm run build
cd dist
Remove-Item -Recurse -Force .git
echo 'kaisa.co.kr' > CNAME
git init
git checkout -b main
git add -A
git commit -m 'deploy'
git remote add origin "https://github.com/kaisaohnae/kaisafo.git"
git push -u --force origin main
cd ..
