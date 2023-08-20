{
  stdenv,
  pkgs,
  lib,
  fetchurl,
  freetype,
  gcc,
  dpkg,
  pluginName,
  pluginUrl,
  pluginSha256,
  pluginHomePage,
  pluginSourceRoot,
  pluginDescription,
  pluginUnpackPhase,
  pluginVersion,
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

  nativeBuildInputs = [ dpkg ];
  buildInputs       = [
    freetype
    stdenv.cc.cc.lib
  ];

  installPhase = ''
    mkdir -p $out/
    cp -r usr/lib/vst3/* $out/
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


