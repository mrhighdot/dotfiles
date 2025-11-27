{
  description = "Global development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux"; # or "aarch64-darwin" for M1 Mac
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
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
          python3
          php
          nodejs
          go
          rustup
          gcc
          gnumake
          cmake
          pkg-config
          neovim
        ];

        shellHook = ''
          echo "🚀 Fast global environment!"
          export PATH="$HOME/.local/bin:$HOME/.local/flutter/bin:$HOME/sketchybar/bin:$HOME/.config/composer/vendor/bin:$HOME/.bun/bin:$HOME/.local/cmdline-tools/latest/bin:$HOME/mongodb/bin:$PATH"
          eval "$(zoxide init bash)"
          export PS1="[nix-global:\w]\$ "
        '';
      };
    };
}
