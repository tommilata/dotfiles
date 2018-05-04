function bb
	find ~/src/bitbucket.org -type d -mindepth 2 -maxdepth 2 -not -path '*/\.*' \
		| awk -F'/' '{ print $(NF-1) "/" $NF }' \
		| fzf \
		| awk '{ print "https://bitbucket.org/" $0 }'
end
