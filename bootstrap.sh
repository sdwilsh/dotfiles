#!/usr/bin/env sh

set -eu

# Used by DevPod to setup my dotfiles in all devcontainers
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply sdwilsh
