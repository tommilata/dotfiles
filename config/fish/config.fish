set -x PATH $PATH ~/bin

set -x PATH "$HOME/miniconda3/bin" $PATH
set -U fish_user_paths $HOME/miniconda3/bin $fish_user_paths

# more robust would be to prefix with  /(conda info --root)
# but it's quite slow
source /Users/tomas/miniconda3/etc/fish/conf.d/conda.fish


# SourceTree
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'
