alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ll="exa -la"
alias vim=nvim

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zshprivate

function fsrc {
	cmd="$1"
	find  /Users/tomas/src/* -type d -maxdepth 4 -not -path '*/\.*' \
		| sed "s|/Users/tomas/src/||g" \
                | fzy \
		| read dir \
		&& eval "$cmd" /Users/tomas/src/$dir
}


function s {
	fsrc "cd"
}

export PATH="/opt/homebrew/opt/helm@2/bin:$PATH"

