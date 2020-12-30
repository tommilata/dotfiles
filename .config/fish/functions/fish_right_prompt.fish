function fish_right_prompt
	if set -q PROMPT_AWS_PROFILE
		echo -n -s (set_color black --background FF9900) " ☁ $PROMPT_AWS_PROFILE " (set_color normal)
	else if set -q AWS_ACCESS_KEY_ID
	        # We are in the context of an AWS profile, but we don't know which
	        # one. Show a red warning.
		echo -n -s (set_color --background red) " ☁ ? " (set_color normal)
	end
end
