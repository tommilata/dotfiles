function s
	cd ~/src
	find * -type d -maxdepth 3 -not -path '*/\.*' | fzy | read dir; and cd $dir
end
