{ config, pkgs, ... }: {
  programs.jujutsu.enable = true;

  programs.git = {
    enable = true;

    ignores = [
      "*.swp"
      "*.swo"
      "result/"
      ".irbrc"
      ".DS_Store"
    ];

    settings = {
      apply = { whitespace = "fix"; };
      branch = { sort = "-committerdate"; };
      color = { diff = "auto"; branch = "auto"; status = "auto"; };
      column = { ui = "auto"; };
      commit = { verbose = true; };
      core = { pager = "delta --line-numbers"; excludesfile = "~/.gitignore"; whitespace = "trailing-space,space-before-tab"; };
      diff = { algorithm = "histogram"; colorMoved = "plain"; mnenomicPrefix = true; renames = true; };
      fetch = { prune = true; pruneTags = true; all = true; };
      filter = { clean = "git stripspace"; };
      help = { autocorrect = "prompt"; };
      init = { defaultBranch = "main"; };
      merge = { conflictStyle = "zdiff3"; };
      pull = { ff = "only"; rebase = true; };
      push = { default = "current"; autoSetupRemote = true; followTags = true; };
      rebase = { autoSquash = true; autoStash = true; updateRefs = true; };
      rerere = { enabled = true; autoupdate = true; };
      tag = { sort = "version:refname"; };

      aliases = {
        recent = "! git branch --sort=-committerdate --format=\"%(committerdate:relative)%09%(refname:short)\" | head -10";
        smartlog = "log --graph --pretty=format:'commit: %C(bold red)%h%Creset %C(red)[%H]%Creset %C(bold magenta)%d %Creset%ndate: %C(bold yellow)%cd %Creset%C(yellow)%cr%Creset%nauthor: %C(bold blue)%an%Creset %C(blue)[%ae]%Creset%n%C(cyan)%s%n%Creset'";
      };
    };

    signing.format = null;
  };
}
