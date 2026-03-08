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
    #zls 2026-02-08 broken

    # LLMs/Agents
    aider-chat
    claude-code

    # Terminals
    alacritty
    ghostty

    # Misc
    ctags
    delta
    git-absorb
    gnumake
    iperf3
    unzip
    watchman
    wget
  ];

  programs.vim.enable = true; 
  programs.fzf.enable = true;
  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;
}
