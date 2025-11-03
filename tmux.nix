{ config, pkgs, ... }: {
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    escapeTime = 0;
    historyLimit = 5000;
    keyMode = "vi";
    resizeAmount = 10;
    prefix = "C-Space";
    terminal = "tmux-256color";
    extraConfig = ''
      # browser style tab navigation
      bind -n M-1 select-window -t 1
      bind -n M-2 select-window -t 2
      bind -n M-3 select-window -t 3
      bind -n M-4 select-window -t 4
      bind -n M-5 select-window -t 5
      bind -n M-6 select-window -t 6
      bind -n M-7 select-window -t 7
      bind -n M-8 select-window -t 8
      bind -n M-9 select-window -t:$

      # left and right window navigation
      bind -n M-Left select-window -t:-1
      bind -n M-Right select-window -t:+1

      # vim style pane navigation
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      # split windows into panes like vim
      bind s split-window -v
      bind v split-pane -h

      bind -r H resize-pane -L
      bind -r J resize-pane -D
      bind -r K resize-pane -U
      bind -r L resize-pane -R

      set -g status-style "bg=olive,fg=black"
      set -g window-status-current-style "bg=olive,fg=black,reverse,bold"

      set -g status-left ""
      set -g status-right ""
    '';
  };
}
