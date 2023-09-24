{
  enable = true;

  settings = {
    env = {
      "TERM" = "xterm-256color";
    };
    window = {
      dimensions = {
        columns = 80;
        lines = 40;
      };
      padding = {
        x = 8;
        y = 8;
      };
      decorations = "buttonless";
      resize_increments = true;
    };
    font = {
      normal.family = "Cousine";
      size = 14.0;
    };
    shell = {
      program = "/run/current-system/sw/bin/fish";
    };
    # One Light
    colors = {
      primary = {
        background = "0x1e2127";
        foreground = "0xabb2bf";
      };
      normal = {
        black = "0x1e2127";
        red = "0xe06c75";
        green = "0x98c379";
        yellow ="0xd19a66";
        blue ="0x61afef";
        magenta = "0xc678dd";
        cyan ="0x56b6c2";
        white = "0x828791";
      };
      bright = {
        black = "0x5c6370";
        red = "0xe06c75";
        green = "0x98c379";
        yellow ="0xd19a66";
        blue ="0x61afef";
        magenta = "0xc678dd";
        cyan ="0x56b6c2";
        white = "0xe6efff";
      };
    };
    draw_bold_text_with_bright_colors = false;
  };
}
