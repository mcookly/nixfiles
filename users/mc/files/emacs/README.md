# My GNU Emacs Config

Here you will find all the code I use to tune the wonderful [GNU Emacs](https://www.gnu.org/software/emacs/), my current text editor of choice.  (If you're interested in why it's my go-to, check out "Why Emacs?" below.)  I recommend browsing comments in the code to understand how this repo works.

Currently I use Emacs 29, managed via [Nix](https://nixos.org).


## Why Emacs?

Although I (evidently) enjoy programming, I use a text editor first and foremost for writing academic prose.  Consequently I need a slightly different -- perhaps just simpler? -- set of tools than most programmers.  While I'm still discovering what those features are, here are the most important two:

1. efficient manipulating of text
2. bidirectional (bidi) text support.

Modal text editors like [Vim](https://www.vim.org/) and [Neovim](https://neovim.io/) excel at the first one.  (In fact, I used Neovim for a while before coming to Emacs.)  But they really suck at displaying bidi text, despite having workarounds.  [VSCode](https://code.visualstudio.com/)/[VSCodium](https://vscodium.com/) has too many programming features I do not need, and I cannot hack them enough to do what I want (not to mention being far slower than TUIs or Emacs).  And there are other editors, but they fail at one of the above features.  While I cannot yet comment on the efficiency of text editing in Emacs, its developers has gone above and beyond regarding bidi support.  For this alone I plan to stick with it.

Emacs may fit my needs, but I still advocate for better bidi support in text editors.  We could use more options!
