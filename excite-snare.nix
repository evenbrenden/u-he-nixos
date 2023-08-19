{ stdenv, lib, fetchurl, freetype, gcc, unzip, xcbutil, libxcb, xcb-util-cursor, xkbd, libxkbcommon, libglibutil, glib, cairo, libtiger,pango, fontconfig, expat, ... }:

stdenv.mkDerivation rec {
  pname = "EXCITE-SNARE";
  version = "1.0.0";

  src = fetchurl {
    url = "https://plugins4free.com/get_plug/excite_snare_drum-Linux.zip";
    sha256 = "1wxbmzz05sya67h0xlkk56ppjxb08g34h6a6z61qi28nrrcx00lp";
  };

  sourceRoot = "excite_snare_drum.vst3"; # Set to the root directory of the plugin

  nativeBuildInputs = [ unzip ]; # for unzipping the source file

  buildInputs = [ freetype stdenv.cc.cc.lib xcbutil libxcb xcb-util-cursor xkbd libxkbcommon libglibutil glib  cairo libtiger pango fontconfig expat  ];

  installPhase = ''
    mkdir -p $out/lib/excite_snare_drum
    cp -r * $out/lib/excite_snare_drum
    patchelf --set-rpath "${lib.makeLibraryPath [ freetype stdenv.cc.cc.lib xcbutil libxcb xcb-util-cursor xkbd libglibutil libxkbcommon glib cairo libtiger pango fontconfig expat ]}" $out/lib/excite_snare_drum/Contents/x86_64-linux/excite_snare_drum.so
  '';

  meta = with lib; {
    description = "Excite Snare Drum VST Plugin";
    homepage = "https://www.chair.audio/product/excite_snare_drum/";
    license = licenses.unfree; # this software is not free
    platforms = platforms.linux;
  };
}

