# My Nix files (for MacOS)

using `flake`, `nix-darwin`, and `home-manager`.


## Structure

```
.
├── hosts           # Configs for my computers
├── packages        # Nix packages too small for their own repo
└── users           # System users (home-manager and dotfiles)
```

I use GNU Emacs.  If you're looking for my `.emacs.d`, it's [here](./users/mc/files/emacs).


## How to Use

1. Install Nix
2. Install Homebrew
3. Build flake of choice
4. Run `darwin-rebuild switch` with said flake
5. Change user shell via `chsh -s /run/current-system/sw/bin/{shell}`


## License

My code is under `0BSD`, so use whatever you want!  If I've taken code from somewhere else, it will be explicitly marked as such.
