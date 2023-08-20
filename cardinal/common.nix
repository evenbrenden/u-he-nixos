{
  pkgs,
  stdenv,
  lib,
  unzip,
  mesa,
  fetchurl,
  freetype,
  pluginName,
  pluginUrl,
  pluginSha256,
  pluginHomePage,
  pluginSourceRoot,
  pluginDescription,
  pluginUnpackPhase,
  pluginVersion,
  libGL,
  libXrandr,
  ...
}:

stdenv.mkDerivation {

  name    = pluginName;
  version = pluginVersion;

  src = pkgs.fetchurl {
    url    = pluginUrl;
    sha256 = pluginSha256;
  };

  sourceRoot        = pluginSourceRoot;

  nativeBuildInputs = [ unzip ];
  buildInputs       = [ # not sure if these are needed
    freetype
    stdenv.cc.cc.lib
    libGL
    mesa
    libXrandr
  ];

  unpackPhase = pluginUnpackPhase;

  installPhase = ''
    mkdir -p $out/
    cp -r *  $out/
    patchelf --set-rpath "${lib.makeLibraryPath [
      freetype
      stdenv.cc.cc.lib
      libGL
      mesa
      libXrandr
    ]}" $out/${pluginName}.vst3/Contents/x86_64-linux/${pluginName}.so
  '';

  meta = with lib; {
    description = pluginDescription;
    homepage    = pluginHomePage;
    license     = licenses.unfree; # this software is not free
    platforms   = platforms.linux;
  };
}

