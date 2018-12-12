function awskeys
	set -l account "$argv"
	
	for cmd in (cat ~/.aws/credentials | grep "\[$account\]" -A 2 | sed -e 's/aws_access_key_id/AWS_ACCESS_KEY_ID/' -e 's/aws_secret_access_key/AWS_SECRET_ACCESS_KEY/' | grep AWS_ | awk '{ print "set -x " $1 " " $3 }'); eval $cmd; end

	echo 'Current AWS_ variables from `env`:'
	env | grep AWS_
end
