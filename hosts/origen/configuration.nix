{ pkgs, ... }:

{
  services.nix-daemon.enable = true;
  # This version of nix doesn't need `experimental-features = nix-command flakes`.
  nix.package = pkgs.nixFlakes; 
  nix.settings.trusted-users = [
    "@admin"
  ];

  # Packages ------------------------------------------------------------------

  # Packages are listed alphabetically.
  environment.systemPackages = with pkgs; [
    bat
    coreutils
    gawk
    git
    gnused
    helix
    lazygit
    ripgrep
    tree
  ];

  programs.fish.enable = true;

  environment.variables = {
    EDITOR = "hx";
    VISUAL = "$EDITOR";

    # Force MacOS to acknowledge XDG standards.
    XDG_CACHE_HOME = "$HOME/etc";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/var/cache";
  };

  # Nix does not adjust `etc/shells` unless shell is added here.
  environment.shells = with pkgs; [
    fish
  ];

  # Use Homebrew for applications
  homebrew = {
    enable = true;
    onActivation.upgrade = true; # Slows down `darwin-rebuild`
    casks = [
      "bitwarden"
      "brave-browser"
      "kitty"
      "obsidian"
      "rectangle"
    ];
  };

  # MacOS Settings ------------------------------------------------------------

  system.defaults = {
    NSGlobalDomain = {
      AppleEnableMouseSwipeNavigateWithScrolls = false;
      AppleEnableSwipeNavigateWithScrolls = false;
      AppleFontSmoothing = 0;
      AppleShowAllExtensions = true;
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticDashSubstitutionEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;
      NSAutomaticWindowAnimationsEnabled = false;
      NSDocumentSaveNewDocumentsToCloud = false;
      _HIHideMenuBar = true;
      
      "com.apple.mouse.tapBehavior" = 1;
    };
    dock = {
      autohide = true;
      mineffect = "scale";
      show-recents = false;
      static-only = true;
    };
    finder = {
      AppleShowAllExtensions = true;
      CreateDesktop = false;
      FXEnableExtensionChangeWarning = false;
      FXPreferredViewStyle = "Nlsv";
      QuitMenuItem = true;
      ShowPathbar = true;
    };
    loginwindow = {
      GuestEnabled = false;
    };
    menuExtraClock = {
      Show24Hour = true;
      ShowDayOfMonth = true;
      ShowDayOfWeek = true;
    };

  };

  # Fonts ---------------------------------------------------------------------

  fonts.fontDir.enable = true;
  
  fonts.fonts = with pkgs; [
    (iosevka.override {
      privateBuildPlan = builtins.readFile ./iosevka-sinai.toml;
      set = "sinai";
    })
  ];

  # Users ---------------------------------------------------------------------

  users.users.mc = {
    name = "mc";
    home = "/Users/mc";
    description = "Max";
    shell = pkgs.fish;
  };
}
