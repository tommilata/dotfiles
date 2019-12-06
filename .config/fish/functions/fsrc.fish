function fsrc
  set -l cmd $argv[1]
	find  /Users/tomas/src/* -type d -maxdepth 3 -not -path '*/\.*' \
		| sed "s|/Users/tomas/src/||g" \
                | fzy \
		| read dir \
		; and eval "$cmd" /Users/tomas/src/$dir
end
