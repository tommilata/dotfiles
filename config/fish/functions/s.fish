function s
	find ~/src -type d -maxdepth 4 -not -path '*/\.*' | fzy | read dir; and cd $dir
end
