{ stdenv, lib, fetchurl, freetype, gcc, unzip, xcbutil, libxcb, xcb-util-cursor, xkbd, libxkbcommon, libglibutil, glib, cairo, libtiger,pango, fontconfig, expat, ... }:

stdenv.mkDerivation rec {
  pname = "EXCITE-CYMBAL";
  version = "1.0.0";

  src = fetchurl {
    url = "https://plugins4free.com/get_plug/EXCITE-CYMBAL_Linux.zip";
    sha256 = "1iyz03d1qjv4d5ivp6x6gl2lbgwxi3d102xw8c72vvzx0spm6yvc";
  };

  #sourceRoot = "excite_cymbal"; # Set to the root directory of the plugin

  nativeBuildInputs = [ unzip ]; # for unzipping the source file

  buildInputs = [ freetype stdenv.cc.cc.lib xcbutil libxcb xcb-util-cursor xkbd libxkbcommon libglibutil glib  cairo libtiger pango fontconfig expat  ];

  installPhase = ''
    mkdir -p $out/lib/excite_cymbal
    cp -r * $out/lib/excite_cymbal
    patchelf --set-rpath "${lib.makeLibraryPath [ freetype stdenv.cc.cc.lib xcbutil libxcb xcb-util-cursor xkbd libglibutil libxkbcommon glib cairo libtiger pango fontconfig expat ]}" $out/lib/excite_cymbal/excite_cymbal.vst3/Contents/x86_64-linux/excite_cymbal.so
  '';

  meta = with lib; {
    description = "Excite Cymbal VST Plugin";
    homepage = "https://www.chair.audio/product/excite_cymbal/";
    license = licenses.unfree; # this software is not free
    platforms = platforms.linux;
  };
}

