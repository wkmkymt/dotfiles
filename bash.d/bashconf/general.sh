#### @ General

# Add rather than overwrite history
shopt -s histappend

# Confirm the command execution when using [ ! ]
shopt -s histverify

# Retry when it fails to execute the command
shopt -s histreedit

# Recognize terminal size in the automatic
shopt -s checkwinsize

# Not to complete after [ @ ]
shopt -u hostcomplete

# Not to complete when the input is empty
shopt -s no_empty_cmd_completion

# Check the hash table of path always
shopt -s checkhash

# Be able to use **, * that match recursively
shopt -s globstar