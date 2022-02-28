function awskeys

    switch $argv
        case --clear
            set -e PROMPT_AWS_PROFILE
            set -e AWS_ACCESS_KEY_ID
            set -e AWS_SECRET_ACCESS_KEY

            set -l session_var (env | grep OP_SESSION_ | cut -f1 -d=)
            set -e "$session_var"
        case '*'
            set -l profile "$argv"

            if not env | grep OP_SESSION_ 1>/dev/null
                eval (op signin)
                if not env | grep OP_SESSION_ 1>/dev/null
                    echo "Login failed"
                    return 1
                end
            end

            set -l aws_fields (op get item "AWS $profile" --fields PROMPT_AWS_PROFILE --fields AWS_ACCESS_KEY_ID --fields AWS_SECRET_ACCESS_KEY)

            set -gx PROMPT_AWS_PROFILE (echo $aws_fields | jq -r .PROMPT_AWS_PROFILE)
            set -gx AWS_ACCESS_KEY_ID (echo $aws_fields | jq -r .AWS_ACCESS_KEY_ID)
            set -gx AWS_SECRET_ACCESS_KEY (echo $aws_fields | jq -r .AWS_SECRET_ACCESS_KEY)
    end
end
