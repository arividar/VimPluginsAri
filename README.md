# vimplugins 
## Create git subtrees
```
git subtree add --prefix ari/start/vim-polyglog https://github.com/sheerun/vim-polyglot master --squash
git subtree add --prefix ari/start/nerdtree https://github.com/preservim/nerdtree.git master --squash
git subtree add --prefix ari/start/gruvbox https://github.com/morhetz/gruvbox.git master --squash
git subtree add --prefix ari/start/vim-prettier https://github.com/prettier/vim-prettier master --squash
```
### Tags for NerdTree:
```
vim -u NONE -c "helptags ~/.vim/pack/ari/start/nerdtree/doc" -c q
```
## About git subtrees:
* http://endot.org/2011/05/18/git-submodules-vs-subtrees-for-vim-plugins/
* https://codewinsarguments.co/2016/05/01/git-submodules-vs-git-subtrees/
* https://blog.developer.atlassian.com/the-power-of-git-subtree/
