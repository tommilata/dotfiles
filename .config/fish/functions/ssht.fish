function _ssht
end


function ssht
    set -l host (cat ~/.ssh/config | grep Host | grep -v -i  HostName | grep -v '*' | awk '{ print $2 }' | fzy)
    ssh -t $host "tmux new-session -A -s default-session"
  
end


