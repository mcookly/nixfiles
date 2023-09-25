{ lib, pkgs, ... }:

{
  home.stateVersion = "23.05";

  home.packages = with pkgs; [
#    emacs29
    fribidi
    fzf
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
      alias gc  "git checkout"
      alias gs  "git status"
      alias lz  "lazygit"
    '';
  };
  programs.git = import ./programs/git.nix;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.tmux = {
    enable = true;
    clock24 = true;
    escapeTime = 0;
    shortcut = "a";
  };
}
