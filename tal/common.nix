{
  stdenv,
  lib,
  fetchurl,
  freetype,
  gcc,
  unzip,
  pluginName,
  pluginUrl,
  pluginSha256,
  pluginHomePage,
  pluginSourceRoot,
  pluginDescription,
  pluginUnpackPhase,
  ...
}:

stdenv.mkDerivation rec {

  name    = pluginName;
  version = pluginVersion;

  src = pkgs.fetchurl {
    url    = pluginUrl;
    sha256 = pluginSha256;
  };

  sourceRoot        = pluginSourceRoot;

  nativeBuildInputs = [ unzip ];
  buildInputs       = [
    freetype
    stdenv.cc.cc.lib
  ];

  buildInputs = [ freetype stdenv.cc.cc.lib ];

  installPhase = ''
    mkdir -p $out/
    cp -r * $out/
    patchelf --set-rpath "${lib.makeLibraryPath [
      freetype
      stdenv.cc.cc.lib
    ]}" $out/${pluginName}.vst3/Contents/x86_64-linux/${pluginName}.so
  '';

  meta = with lib; {
    description = pluginDescription;
    homepage    = pluginHomePage;
    license     = licenses.unfree; # this software is not free
    platforms   = platforms.linux;
  };
}


