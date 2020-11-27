{ stdenv, autoPatchelfHook, expat, libuuid, glib, gtk3 }:

stdenv.mkDerivation rec {
  name = "u-he-diva";
  src = ./Diva_144_9775_Linux.tar.xz;

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [ expat libuuid glib gtk3 ];

  installPhase = ''
    mkdir -p $out/lib/vst
    cp -r . $out/lib/vst
  '';
}
