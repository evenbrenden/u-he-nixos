{ pkgs, stdenv, autoPatchelfHook, expat, libuuid, glib, gtk3 }:

stdenv.mkDerivation rec {
  name = "u-he-diva";
  src = pkgs.fetchurl {
    url = "https://www.u-he.com/downloads/linux/beta/9775/Diva_144_9775_Linux.tar.xz";
    sha256 = "0dz5mrnxqvj28kbhsvjnq341l8k5zhh3ncw13pzpk8wcffqk16qs";
  };

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [ expat libuuid glib gtk3 ];

  installPhase = ''
    mkdir -p $out/lib/vst
    cp -r . $out/lib/vst
  '';
}
