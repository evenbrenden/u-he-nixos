{ pkgs, stdenv, autoPatchelfHook, expat, libuuid, glib, gtk3 }:

stdenv.mkDerivation rec {
  name = "u-he-zebra2";
  src = pkgs.fetchurl {
    url = "https://www.u-he.com/downloads/linux/beta/9775/Zebra2_291_9775_Linux.tar.xz";
    sha256 = "09i2shw0h9a5654hd61qrnrgm91ksbricy0152nciddhjq3h8r59";
  };

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [ expat libuuid glib gtk3 ];

  installPhase = ''
    mkdir -p $out/lib/vst
    cp -r . $out/lib/vst
  '';
}
