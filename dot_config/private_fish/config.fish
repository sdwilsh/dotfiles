fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR vim

    fish_vi_key_bindings

    # Program-dependent Things
    if command -q chezmoi
        chezmoi completion fish | source
    end
    if command -q jj
        jj util completion fish | source
    end
    if command -q starship
        starship init fish | source
    end
end

