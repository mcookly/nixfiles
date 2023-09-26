{
  enable = true;

  user = {
    name = "Max (mcookly)";
    email = "git@mxck.onl";
    signingKey = "5923EFD13DB8D4D8";
  };

  commit = {
    gpgSign = true;
  };

  ignores = [
    # Created by https://www.toptal.com/developers/gitignore/api/emacs,vim,macos,git,latex
    # Edit at https://www.toptal.com/developers/gitignore?templates=emacs,vim,macos,git,latex

    ### Emacs ###"
    # -*- mode: gitignore; -*-
    "*~"
    "\#*\#"
    "/.emacs.desktop"
    "/.emacs.desktop.lock"
    "*.elc"
    "auto-save-list"
    "tramp"
    ".\#*"

    # Org-mode"
    ".org-id-locations"
    "*_archive"

    # flymake-mode"
    "*_flymake.*"

    # eshell files"
    "/eshell/history"
    "/eshell/lastdir"

    # elpa packages"
    "/elpa/"

    # reftex files"
    "*.rel"

    # AUCTeX auto folder"
    "/auto/"

    # cask packages"
    ".cask/"
    "dist/"

    # Flycheck"
    "flycheck_*.el"

    # server auth directory"
    "/server/"

    # projectiles files"
    ".projectile"

    # directory configuration"
    ".dir-locals.el"

    # network security"
    "/network-security.data"


    ### Git ###"
    # Created by git for backups. To disable backups in Git:
    # $ git config --global mergetool.keepBackup false
    "*.orig"

    # Created by git when using merge tools for conflicts"
    "*.BACKUP.*"
    "*.BASE.*"
    "*.LOCAL.*"
    "*.REMOTE.*"
    "*_BACKUP_*.txt"
    "*_BASE_*.txt"
    "*_LOCAL_*.txt"
    "*_REMOTE_*.txt"

    ### LaTeX ###"
    ## Core latex/pdflatex auxiliary files:
    "*.aux"
    "*.lof"
    "*.log"
    "*.lot"
    "*.fls"
    "*.out"
    "*.toc"
    "*.fmt"
    "*.fot"
    "*.cb"
    "*.cb2"
    ".*.lb"

    ## Intermediate documents:"
    "*.dvi"
    "*.xdv"
    "*-converted-to.*"
    # these rules might exclude image files for figures etc.
    # *.ps
    # *.eps
    # *.pdf

    ## Generated if empty string is given at "Please type another file name for output:""
    ".pdf"

    ## Bibliography auxiliary files (bibtex/biblatex/biber):"
    "*.bbl"
    "*.bcf"
    "*.blg"
    "*-blx.aux"
    "*-blx.bib"
    "*.run.xml"

    ## Build tool auxiliary files:"
    "*.fdb_latexmk"
    "*.synctex"
    "*.synctex(busy)"
    "*.synctex.gz"
    "*.synctex.gz(busy)"
    "*.pdfsync"

    ## Build tool directories for auxiliary files"
    # latexrun
    "latex.out/"

    ## Auxiliary and intermediate files from other packages:"
    # algorithms
    "*.alg"
    "*.loa"

    # achemso"
    "acs-*.bib"

    # amsthm"
    "*.thm"

    # beamer"
    "*.nav"
    "*.pre"
    "*.snm"
    "*.vrb"

    # changes"
    "*.soc"

    # comment"
    "*.cut"

    # cprotect"
    "*.cpt"

    # elsarticle (documentclass of Elsevier journals)"
    "*.spl"

    # endnotes"
    "*.ent"

    # fixme"
    "*.lox"

    # feynmf/feynmp"
    "*.mf"
    "*.mp"
    "*.t[1-9]"
    "*.t[1-9][0-9]"
    "*.tfm"

    #(r)(e)ledmac/(r)(e)ledpar"
    "*.end"
    "*.?end"
    "*.[1-9]"
    "*.[1-9][0-9]"
    "*.[1-9][0-9][0-9]"
    "*.[1-9]R"
    "*.[1-9][0-9]R"
    "*.[1-9][0-9][0-9]R"
    "*.eledsec[1-9]"
    "*.eledsec[1-9]R"
    "*.eledsec[1-9][0-9]"
    "*.eledsec[1-9][0-9]R"
    "*.eledsec[1-9][0-9][0-9]"
    "*.eledsec[1-9][0-9][0-9]R"

    # glossaries"
    "*.acn"
    "*.acr"
    "*.glg"
    "*.glo"
    "*.gls"
    "*.glsdefs"
    "*.lzo"
    "*.lzs"
    "*.slg"
    "*.slo"
    "*.sls"

    # uncomment this for glossaries-extra (will ignore makeindex's style files!)"
    # *.ist

    # gnuplot"
    "*.gnuplot"
    "*.table"

    # gnuplottex"
    "*-gnuplottex-*"

    # gregoriotex"
    "*.gaux"
    "*.glog"
    "*.gtex"

    # htlatex"
    "*.4ct"
    "*.4tc"
    "*.idv"
    "*.lg"
    "*.trc"
    "*.xref"

    # hyperref"
    "*.brf"

    # knitr"
    "*-concordance.tex"
    # TODO Uncomment the next line if you use knitr and want to ignore its generated tikz files
    # *.tikz
    "*-tikzDictionary"

    # listings"
    "*.lol"

    # luatexja-ruby"
    "*.ltjruby"

    # makeidx"
    "*.idx"
    "*.ilg"
    "*.ind"

    # minitoc"
    "*.maf"
    "*.mlf"
    "*.mlt"
    "*.mtc[0-9]*"
    "*.slf[0-9]*"
    "*.slt[0-9]*"
    "*.stc[0-9]*"

    # minted"
    "_minted*"
    "*.pyg"

    # morewrites"
    "*.mw"

    # newpax"
    "*.newpax"

    # nomencl"
    "*.nlg"
    "*.nlo"
    "*.nls"

    # pax"
    "*.pax"

    # pdfpcnotes"
    "*.pdfpc"

    # sagetex"
    "*.sagetex.sage"
    "*.sagetex.py"
    "*.sagetex.scmd"

    # scrwfile"
    "*.wrt"

    # svg"
    "svg-inkscape/"

    # sympy"
    "*.sout"
    "*.sympy"
    "sympy-plots-for-*.tex/"

    # pdfcomment"
    "*.upa"
    "*.upb"

    # pythontex"
    "*.pytxcode"
    "pythontex-files-*/"

    # tcolorbox"
    "*.listing"

    # thmtools"
    "*.loe"

    # TikZ & PGF"
    "*.dpth"
    "*.md5"
    "*.auxlock"

    # titletoc"
    "*.ptc"

    # todonotes"
    "*.tdo"

    # vhistory"
    "*.hst"
    "*.ver"

    # easy-todo"
    "*.lod"

    # xcolor"
    "*.xcp"

    # xmpincl"
    "*.xmpi"

    # xindy"
    "*.xdy"

    # xypic precompiled matrices and outlines"
    "*.xyc"
    "*.xyd"

    # endfloat"
    "*.ttt"
    "*.fff"

    # Latexian"
    "TSWLatexianTemp*"

    ## Editors:"
    # WinEdt
    "*.bak"
    "*.sav"

    # Texpad"
    ".texpadtmp"

    # LyX"
    "*.lyx~"

    # Kile"
    "*.backup"

    # gummi"
    ".*.swp"

    # KBibTeX"
    "*~[0-9]*"

    # TeXnicCenter"
    "*.tps"

    # auto folder when using emacs and auctex"
    "./auto/*"
    "*.el"

    # expex forward references with \gathertags"
    "*-tags.tex"

    # standalone packages"
    "*.sta"

    # Makeindex log files"
    "*.lpz"

    # xwatermark package"
    "*.xwm"

    # REVTeX puts footnotes in the bibliography by default, unless the nofootinbib"
    # option is specified. Footnotes are the stored in a file with suffix Notes.bib.
    # Uncomment the next line to have this generated file ignored.
    #*Notes.bib

    ### LaTeX Patch ###"
    # LIPIcs / OASIcs
    "*.vtc"

    # glossaries"
    "*.glstex"

    ### macOS ###"
    # General
    ".DS_Store"
    ".AppleDouble"
    ".LSOverride"

    # Icon must end with two \r"
    "Icon"


    # Thumbnails"
    "._*"

    # Files that might appear in the root of a volume"
    ".DocumentRevisions-V100"
    ".fseventsd"
    ".Spotlight-V100"
    ".TemporaryItems"
    ".Trashes"
    ".VolumeIcon.icns"
    ".com.apple.timemachine.donotpresent"

    # Directories potentially created on remote AFP share"
    ".AppleDB"
    ".AppleDesktop"
    "Network Trash Folder"
    "Temporary Items"
    ".apdisk"

    ### macOS Patch ###"
    # iCloud generated files
    "*.icloud"

    ### Vim ###"
    # Swap
    "[._]*.s[a-v][a-z]"
    "!*.svg  # comment out if you don't need vector files"
    "[._]*.sw[a-p]"
    "[._]s[a-rt-v][a-z]"
    "[._]ss[a-gi-z]"
    "[._]sw[a-p]"

    # Session"
    "Session.vim"
    "Sessionx.vim"

    # Temporary"
    ".netrwhist"
    # Auto-generated tag files
    "tags"
    # Persistent undo
    "[._]*.un~"

    # End of https://www.toptal.com/developers/gitignore/api/emacs,vim,macos,git,latex"
  ];
}
