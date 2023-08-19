{
  pkgs,
  stdenv,
  lib,
  fetchurl,
  freetype,
  gcc,
  unzip,
  xcbutil,
  libxcb,
  xcb-util-cursor,
  xkbd,
  libxkbcommon,
  libglibutil,
  glib,
  cairo,
  libtiger,
  pango,
  fontconfig,
  expat,
  pluginName,
  pluginUrl,
  pluginSha256,
  pluginHomePage,
  pluginSourceRoot,
  pluginDescription,
  pluginUnpackPhase ,
  ...
}:

stdenv.mkDerivation {

  name = pluginName;
  src  = pkgs.fetchurl {
    url    = pluginUrl;
    sha256 = pluginSha256;
  };

  sourceRoot        = pluginSourceRoot;

  nativeBuildInputs = [ unzip ];
  buildInputs       = [
    freetype
    stdenv.cc.cc.lib
    xcbutil
    libxcb
    xcb-util-cursor
    xkbd
    libxkbcommon
    libglibutil
    glib
    cairo
    libtiger
    pango
    fontconfig
    expat
  ];

  unpackPhase = pluginUnpackPhase;

  installPhase = ''
    mkdir -p $out/
    cp -r *  $out/
    patchelf --set-rpath "${lib.makeLibraryPath [
      freetype
      stdenv.cc.cc.lib
      xcbutil
      libxcb
      xcb-util-cursor
      xkbd
      libglibutil
      libxkbcommon
      glib
      cairo
      libtiger
      pango
      fontconfig
      expat
    ]}" $out/${pluginName}.vst3/Contents/x86_64-linux/${pluginName}.so
  '';

  meta = with lib; {
    description = pluginDescription;
    homepage    = pluginHomePage;
    license     = licenses.unfree; # this software is not free
    platforms   = platforms.linux;
  };
}

