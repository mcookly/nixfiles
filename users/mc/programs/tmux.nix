{
  enable = true;

  clock24 = true;
  escapeTime = 0;
  shortcut = "a";

  extraConfig = ''
    set-option -g default-command bash # I believe this is the most efficient way.
    source $XDG_CONFIG_HOME/tmux/themes/base16_one_dark.conf
  '';
}
