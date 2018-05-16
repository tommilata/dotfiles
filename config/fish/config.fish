# cargo
set -x PATH "$HOME/.cargo/bin" $PATH

# golang
set -x -U GOPATH $HOME
set -x -U GOBIN $GOPATH/bin

# do not display the welcome message
set -e fish_greeting

set -x PATH $PATH ~/bin

set -x PATH "$HOME/miniconda3/bin" $PATH
set -U fish_user_paths $HOME/miniconda3/bin $fish_user_paths

# more robust would be to prefix with  /(conda info --root)
# but it's quite slow
source /Users/tomas/miniconda3/etc/fish/conf.d/conda.fish

# bobthefish
set -g theme_display_k8s_context no
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# SourceTree
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'
set -g fish_user_paths "/usr/local/opt/postgresql@9.5/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/postgresql@9.5/bin" $fish_user_paths
