if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Remove greetings
set fish_greeting

# Starship prompt
starship init fish | source
