{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "global-dev-environment";

  buildInputs = with pkgs; [
    # Development tools
    git
    curl
    wget
    htop
    jq
    ripgrep
    lazygit
    fd
    bat
    eza
    fzf
    zoxide

    # Programming languages
    python3
    php
    nodejs
    go
    rustup

    # Build tools
    gcc
    gnumake
    cmake
    pkg-config

    # Version control
    # gh # GitHub CLI

    # Your favorite editors
    vim
    neovim
  ];

  shellHook = ''
    			echo "🔧 Global development environment activated!"
    			export EDITOR=nvim
    			export PATH="$HOME/.local/bin:$PATH"
    			export PATH="$HOME/.local/flutter/bin:$PATH"
    			export PATH="$HOME/sketchybar/bin:$PATH"
    			export PATH="$HOME/.nix-profile/bin:$PATH"
    			export PATH="$HOME/mongodb/bin:$PATH"
    			export PATH="$HOME/.config/composer/vendor/bin:$PATH"
    			export PATH="/nix/store/84s01mzl74vh69aphpl3rf07pp49pkz0-python3-3.13.9/bin:$PATH"
    			export PATH="/Users/mrhighdot/.bun/bin:$PATH"

    			# Android Studio
    			export PATH="$HOME/.local/cmdline-tools/latest/bin:$PATH"

    			# Custom aliases
    			alias ll='exa -la --git'
    			alias ls='exa'
    			alias cat='bat'
    			alias find='fd'
    			alias python='python3'
    			alias pip='pip3'
    			alias cd='z'


    			export CC=/nix/store/5cxka60vbybbvyi7a1xjy2dw4jgw5yg0-gcc-wrapper-14.3.0/bin/gcc
    			export CXX=/nix/store/5cxka60vbybbvyi7a1xjy2dw4jgw5yg0-gcc-wrapper-14.3.0/bin/g++
    			export PATH="/nix/store/gzhzi3d3my0icv1sz4r5igwjryqwb4da-cctools-binutils-darwin-1010.6/bin:$PATH"

    			eval "$(zoxide init zsh)"

    			# Enhanced prompt when in global shell
    			if [ -z "$IN_NIX_SHELL" ] || [ "$IN_NIX_SHELL" = "global" ]; then
    			export PS1="\[\033[1;32m\][nix-global:\w]\$\[\033[0m\] "
    			fi
    			'';

  shell = "${pkgs.zsh}/bin/zsh";
}
