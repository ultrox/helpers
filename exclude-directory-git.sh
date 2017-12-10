#!/bin/bash
# New repository
DIR=e2
mkdir $DIR && cd $DIR
git init
git remote add origin https://github.com/ultrox/ex
touch .git/info/sparse-checkout
git config core.sparsecheckout true

echo "*" >> .git/info/sparse-checkout
echo "!sites/*/dev/*" >> .git/info/sparse-checkout
echo "!sites/*/gulp-automation/*" >> .git/info/sparse-checkout
git pull origin master

# If you later decide to change which directories you would like checked out, 
# simply edit the sparse-checkout file and run git read-tree again as above.
# http://schacon.github.io/git/git-read-tree.html#_sparse_checkout
