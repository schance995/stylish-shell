if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    fish_add_path -m ~/bitcamp/software/bin
    alias el=exa
end
