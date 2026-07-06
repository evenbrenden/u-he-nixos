{
  pkgs,
  stdenv,
  autoPatchelfHook,
  expat,
  libuuid,
  libxcb-keysyms,
  libxcb-util,
  glib,
  gtk3,
  pluginName,
  url,
  hash,
}:

stdenv.mkDerivation {
  name = pluginName;
  src = pkgs.fetchurl {
    inherit url hash;
  };

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [
    expat
    libuuid
    libxcb-keysyms
    libxcb-util
    glib
    gtk3
  ];

  installPhase = ''
    mkdir -p $out/lib
    cp -r . $out/lib
  '';
}
