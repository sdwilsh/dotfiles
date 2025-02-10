fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR vim

    fish_vi_key_bindings

    # Program-dependent Things
    if command -q atuin
        atuin init fish | source
        atuin gen-completions --shell fish | source
    end
    if command -q chezmoi
        chezmoi completion fish | source
    end
    if command -q devpod-cli
        devpod-cli completion fish | sed -e 's/-c devpod/-c devpod-cli/g' -e 's/"devpod/"devpod-cli/' | source
    end
    if command -q jj
        jj util completion fish | source
    end
    if command -q just
        just --completions fish | source
    end
    if command -q kustomize
        kustomize completions fish | source
    end
    if command -q starship
        starship init fish | source
    end
    if command -q ujust
        just --completions fish | sed -e 's/ just / ujust /' | source
    end
end

