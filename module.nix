{ config, pkgs, ... }: {
  imports = [
    ./fish.nix
    ./tmux.nix
    ./git.nix
    ./neovim/neovim.nix
  ];

  home.packages = with pkgs; [
    # Better UNIX
    bat
    dig
    doggo
    eza
    fd
    file
    fio
    jq
    ripgrep

    # LSPs
    gopls
    ruby-lsp
    zls

    # Terminals
    alacritty
    ghostty

    # Misc
    ctags
    delta
    ffmpeg
    git-absorb
    gnumake
    iperf3
    tmuxp
    unzip
    watchman
    wget
  ];

  programs.vim.enable = true; 
  programs.fzf.enable = true;
  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;
}
