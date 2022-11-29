pushd /var/www/html/shipgo.id/
git config credential.helper store
git add .
git commit -m 'config'
git pull
git push
popd
