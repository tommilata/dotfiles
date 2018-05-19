function bb
	for arg in $argv
		switch "$arg"
			case -p --pull-requests
				set page '/pull-requests'
			case \*
				set dir (realpath "$arg")
				set repo (echo $dir | repo_from_dir )
		end
	end

	if not set -q dir;
		find ~/src/bitbucket.org -type d \
			-mindepth 2 -maxdepth 2 \
			-not -path '*/\.*' \
		| repo_from_dir \
		| fzy \
		| read repo

	end

	echo $repo \
	| awk -v page="$page" '{ print "https://bitbucket.org/" $0 page }' \
	| xargs open
end

function repo_from_dir
	while read line
		echo $line | awk -F'/' '{ print $(NF-1) "/" $NF }' <&1 
	end
end
