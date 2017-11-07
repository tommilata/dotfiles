function s
        cd ~/src/bitbucket.org/theasi/ 
	ls | fzy | read dir
	echo $dir
	cd $dir
end
