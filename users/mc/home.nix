{ lib, pkgs, ... }:

{
  home.stateVersion = "23.05";

  home.packages = with pkgs; [
#    emacs29
    fribidi
    fzf
    ia-writer-duospace
    liberation_ttf
    mdcat
    pandoc
    typst
    vale
  ];

  home.file = {
    ".config/alacritty" = {
      source = ./files/alacritty;
      recursive = true;
    };
#    ".config/emacs" = {
#      source = ./files/emacs;
#      recursive = true;
#    };
    ".config/fish" = {
      source = ./files/fish;
      recursive = true;
    };
    ".config/helix" = {
      source = ./files/helix;
      recursive = true;
    };
  };

  home.sessionVariables = {
    ALTERNATE_EDITOR = ""; # Emacs will spawn a daemon if one is not running.
    EDITOR = "hx";
    NIX_SHELL_PRESERVE_PROMPT = 1;
    # MacOS won't set the shell as default otherwise.
    SHELL = "/run/current-system/sw/bin/fish";
  };

  home.activation = {
    # Link Emacs files to `.emacs.d` to avoid clutter and messing with Nix
    # file permission.
    linkEmacsConfig = lib.hm.dag.entryAfter ["writeBoundary"] ''
      $DRY_RUN_CMD mkdir -p $HOME/.emacs.d
      $DRY_RUN_CMD ln -fs $HOME/.config/emacs/* $HOME/.emacs.d/
    '';
  };

  programs.alacritty.enable = true;
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting "St. Isidore, pray for us!"

      alias ec  "emacsclient -nw"
      alias ecc "emacsclient -nc"
      alias gc "git checkout"
      alias gs "git status"
      alias lz "lazygit"
      alias vi "$EDITOR"
    '';
  };
  programs.git = import ./programs/git.nix;
  programs.gpg.enable = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.tmux = {
    enable = true;
    clock24 = true;
    escapeTime = 0;
    shortcut = "a";
    extraConfig = ''

      # Minimal Tmux Status
      # https://github.com/niksingh710/minimal-tmux-status
      set-option -g status-position "bottom"
      set-option -g status-style bg=default,fg=default
      set-option -g status-justify centre
      set-option -g status-left '#[bg=default,fg=default,bold]#{?client_prefix,,  tmux  }#[bg=#698DDA,fg=black,bold]#{?client_prefix,  tmux  ,}'
      set-option -g status-right '#S'
      set-option -g window-status-format ' #I:#W '
      set-option -g window-status-current-format '#[bg=#698DDA,fg=black] #I:#W#{?window_zoomed_flag,  , }'
    '';
  };
}
