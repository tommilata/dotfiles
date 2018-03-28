#function fish_right_prompt
#  k8s_context_pretty
#end
#
#function k8s_context_pretty
#
#  # requires powerline fonts to display special symbols
#  # see https://github.com/powerline/fonts or https://github.com/ryanoasis/nerd-fonts
#  function k8sprompt
#    set value $argv[1]
#    set color $argv[2]
#    set foreground (set_color $color)
#    set background (set_color $color --reverse)
#    set arrow \ue0b2
#    set kube \ue79b
#    echo -e -n -s $foreground $arrow $background $kube " $value " 
#  end
#
#  set k8s_context (kubectl config current-context)
#
#  switch $k8s_context
#    case kubernetes-workspaces-staging.asidata.science
#      k8sprompt workspaces blue
#    case kubernetes-workspaces.asidata.science
#      k8sprompt workspaces red
#    case kubernetes-services-staging.asidata.science
#      k8sprompt services blue
#    case kubernetes-services.asidata.science
#      k8sprompt services red
#    case '*'
#      k8sprompt $k8s_context blue
#  end
#
#  echo -e -n -s (set_color normal)  
#end
