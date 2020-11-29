{ pkgs, stdenv, autoPatchelfHook, expat, libuuid, glib, gtk3 }:

stdenv.mkDerivation rec {
  name = "u-he-satin";
  src = pkgs.fetchurl {
    url = "https://www.u-he.com/downloads/linux/beta/9775/Satin_131_9775_Linux.tar.xz";
    sha256 = "0nlv65w05c0hb6bay4hzrzxsdk1m4c2g90ckg93pbg141jlb87ni";
  };

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [ expat libuuid glib gtk3 ];

  installPhase = ''
    mkdir -p $out/lib/vst
    cp -r . $out/lib/vst
  '';
}
