{ pkgs, home-manager, ... }:  {
  programs.neovim = {
    enable = true;
    viAlias = false;
    vimAlias = true;
    withRuby = true;
    withPython3 = true;
    initLua = pkgs.lib.fileContents ./init.lua;
    extraPackages = with pkgs; [];
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig Rename vim-endwise vim-surround nvim-fzf nvim-fzf-commands
      nvim-treesitter oil-nvim vim-wayland-clipboard open-browser-vim # supertab broken for now
      open-browser-github-vim nerdtree plenary-nvim fzf-lsp-nvim
      lsp-zero-nvim none-ls-nvim nvim-cmp cmp-nvim-lsp conform-nvim
      gruvbox-nvim everforest papercolor-theme
      (nvim-treesitter.withPlugins (p: [ p.zig p.swift p.ruby p.yaml p.go p.lua p.vim p.c p.nix ]))
    ];
  };
  
  home.file.".config/nvim/lua/go.lua" = {
    source = ./langs/go.lua;
  };
  home.file.".config/nvim/lua/ruby.lua" = {
    source = ./langs/ruby.lua;
  };
  home.file.".config/nvim/lua/zig.lua" = {
    source = ./langs/zig.lua;
  };
}
