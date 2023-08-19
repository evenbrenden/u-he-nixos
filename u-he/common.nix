{ pkgs, stdenv, autoPatchelfHook, expat, libuuid, glib, gtk3, pluginName, pluginUrl, pluginSha256 }:

stdenv.mkDerivation {

  name = pluginName;
  src = pkgs.fetchurl {
    url = pluginUrl;
    sha256 = pluginSha256;
  };

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [ expat libuuid glib gtk3 ];

  installPhase = ''
    mkdir -p $out/lib
    cp -r . $out/lib
  '';
}
