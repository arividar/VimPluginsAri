# VimPluginsAri
Git repo with my vim plugins as git subtrees.

## Create git subtrees
```
git subtree add --prefix start/vim-polyglog https://github.com/sheerun/vim-polyglot master --squash
git subtree add --prefix start/vim-jsonc https://github.com/kevinoid/vim-jsonc.git master --squash
git subtree add --prefix start/nerdtree https://github.com/preservim/nerdtree.git master --squash
git subtree add --prefix start/gruvbox https://github.com/morhetz/gruvbox.git master --squash
git subtree add --prefix start/vim-prettier https://github.com/prettier/vim-prettier master --squash
git subtree add --prefix start/vim-airline https://github.com/vim-airline/vim-airline.git master --squash
git subtree add --prefix start/vim-airline-themes https://github.com/vim-airline/vim-airline-themes.git master --squash
git subtree add --prefix start/vim-gitgutter https://github.com/airblade/vim-gitgutter.git master --squash
```
## About git subtrees:
* http://endot.org/2011/05/18/git-submodules-vs-subtrees-for-vim-plugins/
* https://codewinsarguments.co/2016/05/01/git-submodules-vs-git-subtrees/
* https://blog.developer.atlassian.com/the-power-of-git-subtree/

### Help tags:
```
vim -u NONE -c "helptags ~/.vim/pack/ari/start/nerdtree/doc" -c q
vim -u NONE -c "helptags vim-gitgutter/doc" -c q
```
=======
