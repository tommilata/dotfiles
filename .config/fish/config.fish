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
set -x PATH "$HOME/miniconda3/bin" $PATH
set -x PATH "/usr/local/opt/postgresql@9.5/bin" $PATH

# pipx
register-python-argcomplete --shell fish pipx | .
# pyenv-virtualenv
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
# added by pipsi (https://github.com/mitsuhiko/pipsi)
set -x PATH /Users/tomas/.local/bin $PATH
# conda
# more robust would be to prefix with  /(conda info --root)
# but it's quite slow
source /Users/tomas/miniconda3/etc/fish/conf.d/conda.fish

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

