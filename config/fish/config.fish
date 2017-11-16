set -x PATH $PATH ~/bin

set -x PATH "$HOME/miniconda3/bin" $PATH
set -U fish_user_paths $HOME/miniconda3/bin $fish_user_paths
source (conda info --root)/etc/fish/conf.d/conda.fish


