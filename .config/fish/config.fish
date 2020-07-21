# cargo
#[ -d "$HOME/.cargo/bin" ]; and set -x PATH "$HOME/.cargo/bin" $PATH

# brew
set -x HOMEBREW_NO_ANALYTICS 1

# golang
set -x GOPATH $HOME/go
set -x GOBIN $GOPATH/bin
# do not display the welcome message
set -e fish_greeting
# bobthefish
set -g theme_display_k8s_context no
set -g theme_powerline_fonts no
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# PATH
set -x PATH $PATH ~/bin
set -x PATH ~/.miniconda/bin $PATH
#conda init fish
set -x PATH "/usr/local/opt/postgresql@9.5/bin" $PATH
set -x PATH "/Users/tomas/.gem/ruby/2.6.0/bin" $PATH

set -x PATH $PATH "/Users/tomas/Library/Application Support/Coursier/bin"

# SourceTree
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

# appengine
#if [ -d ~/appengine-java-sdk/bin ]
#	set -x PATH $PATH ~/appengine-java-sdk/bin
#end
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tomas/google-cloud-sdk/path.fish.inc' ]; . '/Users/tomas/google-cloud-sdk/path.fish.inc'; end
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# git
alias copy-git-describe='echo -n (git describe --dirty=-SNAPSHOT) | pbcopy'
alias copy-git-branch='echo -n (git symbolic-ref --short HEAD) | pbcopy'

alias preview="fzf --preview 'bat {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# exa
if type exa >/dev/null;
  alias l='exa -l --group-directories-first --git'
  alias ll='exa -l --all --all --group-directories-first --git'
  alias lt='exa -T --git-ignore --level=2 --group-directories-first'
  alias llt='exa -lT --git-ignore --level=2 --group-directories-first'
  alias lT='exa -T --git-ignore --level=4 --group-directories-first'
end

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

set -g fish_user_paths "/usr/local/opt/helm@2/bin" $fish_user_paths

# pyenv-virtualenv
#status --is-interactive; and pyenv init - | source
#status --is-interactive; and pyenv virtualenv-init - | source
# added by pipsi (https://github.com/mitsuhiko/pipsi)
set -x PATH /Users/tomas/.local/bin $PATH


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/tomas/.miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

