function s
	find  /Users/tomas/src/* -type d -maxdepth 3 -not -path '*/\.*' \
		| sed "s|/Users/tomas/src/||g" \
                | fzy \
		| read dir \
		; and cd /Users/tomas/src/$dir
end
