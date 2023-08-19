{ stdenv, dpkg, lib, fetchurl, freetype, gcc, unzip, xcbutil, libxcb, xcb-util-cursor, xkbd, libxkbcommon, libglibutil, glib, cairo, libtiger,pango, fontconfig, expat, ... }:

stdenv.mkDerivation rec {
  pname = "ChowDSP-Tape";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/jatinchowdhury18/AnalogTapeModel/releases/download/v2.11.1/ChowTapeModel-Linux-x64-2.11.1.deb";
    sha256 = "07dmx2l8c9gqchxmfp9nl739b075cnl96725srdwqxjzl56sh59j";
  };

  #sourceRoot = "/usr"; # Set to the root directory of the plugin

  nativeBuildInputs = [ dpkg ]; # for unzipping the source file

  buildInputs = [ freetype stdenv.cc.cc.lib xcbutil libxcb xcb-util-cursor xkbd libxkbcommon libglibutil glib  cairo libtiger pango fontconfig expat  ];

  installPhase = ''
    mkdir -p $out/lib/chow_tape
    cp -r * $out/lib/chow_tape
    patchelf --set-rpath "${lib.makeLibraryPath [ freetype stdenv.cc.cc.lib xcbutil libxcb xcb-util-cursor xkbd libglibutil libxkbcommon glib cairo libtiger pango fontconfig expat ]}" $out/usr/lib/vst3/CHOWTapeModel.vst3/Contents/x86_64-linux/CHOWTapeModel.so
  '';

  meta = with lib; {
    description = "ChowDSP Tape VST Plugin";
    homepage = "https://chowdsp.com/";
    license = licenses.unfree; # this software is not free
    platforms = platforms.linux;
  };
}

