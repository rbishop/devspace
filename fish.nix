{ config, pkgs, ... }: {
  programs.fish = {
    enable = true;
    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc; }
      { name = "done"; src = pkgs.fishPlugins.done; }
      { name = "fzf-fish"; src = pkgs.fishPlugins.fzf-fish; }
      { name = "hydro"; src = pkgs.fishPlugins.hydro; }
      { name = "forgit"; src = pkgs.fishPlugins.forgit; }
    ];

    loginShellInit = ''
      if test (tty) = "/dev/tty1"
        WLR_RENDERER=1 sway
      end
    '';
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
