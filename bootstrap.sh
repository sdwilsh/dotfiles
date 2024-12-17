#!/usr/bin/env sh

# Used by DevPod to setup my dotfiles in all devcontainers
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply sdwilsh
