# vimplugins 
## subtrees and sub modules:

* http://endot.org/2011/05/18/git-submodules-vs-subtrees-for-vim-plugins/
* https://codewinsarguments.co/2016/05/01/git-submodules-vs-git-subtrees/
* https://blog.developer.atlassian.com/the-power-of-git-subtree/

## create subtrees 
* git subtree add --prefix ari/start/vim-polyglog https://github.com/sheerun/vim-polyglot ~/.vim/pack/ari/start/vim-polyglot master --squash
* git subtree add --prefix ari/start/nerdtree https://github.com/preservim/nerdtree.git ~/.vim/pack/ari/start/nerdtree master --squash
* git subtree add --prefix ari/start/gruvbox https://github.com/morhetz/gruvbox.git ~/.vim/pack/ari/start/gruvbox master --squash
* git subtree add --prefix ari/start/vim-prettier https://github.com/prettier/vim-prettier master --squash

### For NerdTree:
* vim -u NONE -c "helptags ~/.vim/pack/ari/start/nerdtree/doc" -c q
