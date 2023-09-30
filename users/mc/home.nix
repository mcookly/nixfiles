{ lib, pkgs, ... }:

{
  home.stateVersion = "23.05";

  home.packages = with pkgs; [
    fribidi
    fzf
    ia-writer-duospace
    mdcat
    pandoc
    typst
    vale
  ];

  home.file = {
    ".config/fish" = {
      source = ./files/fish;
      recursive = true;
    };
    ".config/helix" = {
      source = ./files/helix;
      recursive = true;
    };
    ".config/kitty" = {
      source = ./files/kitty;
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

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting "St. Isidore, pray for us!"

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
  programs.kitty.enable = true;
}
