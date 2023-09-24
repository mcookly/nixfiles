{ fetchFromGitHub, lib, stdenv }:

stdenv.mkDerivation rec {
  pname = "neatvi";
  # Actual releases are not consistent, so using calVer instead.
  version = "23.06.12";
  
  src = lib.cleanSource (fetchFromGitHub {
    owner = "aligrudi";
    repo = "neatvi";
    rev = "68e4d234ace409809df61860cd16ebe3de549946";
    sha256 = "sha256-XctxTqbDNE08c3FfdnH5CgqakTbWCwbhGHptv6pdP28=";
  });

  # I'm not yet sure how to just filter in a list of all *.patch files,
  # so the files are added here manually.
  patches = [ ./default.patch ];

  installPhase = ''
    mkdir -p $out/bin
    # The binary name can't conflict with `vi` since autocompletion then fails.
    cp vi $out/bin/neatvi
  '';

  meta = with lib; {
    description = "A small vi/ex editor for editing bidirectional UTF-8 text";
    homepage = "https://github.com/aligrudi/neatvi";
    license = licenses.isc;
    maintainers = [ maintainers.mcookly ]; # Technically, I'm not a maintainer…
    platforms = platforms.all;
  };
} 
