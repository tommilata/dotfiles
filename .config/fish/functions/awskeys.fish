function awskeys

	switch $argv
		case --clear
			set -e AWS_PROFILE
			set -e AWS_ACCESS_KEY_ID
			set -e AWS_SECRET_ACCESS_KEY
		case '*'
			set -l profile "$argv"
	
			if not set -q OP_SESSION_my
				eval (op signin)
			end
		
			set -l aws_fields (op get item "AWS $profile" --fields AWS_PROFILE --fields AWS_ACCESS_KEY_ID --fields AWS_SECRET_ACCESS_KEY)
			
			set -gx AWS_PROFILE (echo $aws_fields | jq -r .AWS_PROFILE)
			set -gx AWS_ACCESS_KEY_ID (echo $aws_fields | jq -r .AWS_ACCESS_KEY_ID)
			set -gx AWS_SECRET_ACCESS_KEY (echo $aws_fields | jq -r .AWS_SECRET_ACCESS_KEY)
	end
end
