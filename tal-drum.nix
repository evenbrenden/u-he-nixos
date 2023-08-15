{ stdenv, lib, fetchurl, freetype, gcc, unzip, ... }:

stdenv.mkDerivation rec {
  pname = "TAL-Drum";
  version = "1.0.0";

  src = fetchurl {
    url = "https://tal-software.com/downloads/plugins/TAL-Drum_64_linux.zip";
    sha256 = "177nsxnf9728zpf7ma1lk4zp5qxi2nybsbmadhznzf68cnmib3jc";
  };

  nativeBuildInputs = [ unzip ]; # for unzipping the source file

    buildInputs = [ freetype stdenv.cc.cc.lib ];


  installPhase = ''
    mkdir -p $out/lib/tal-drum
    cp -r * $out/lib/tal-drum
    patchelf --set-rpath "${lib.makeLibraryPath [ freetype stdenv.cc.cc.lib ]}" $out/lib/tal-drum/libTAL-Drum.so

  '';

  meta = with lib; {
    description = "TAL-Drum VST Plugin";
    homepage = "https://tal-software.com/products/tal-drum";
    license = licenses.unfree; # this software is not free
    platforms = platforms.linux;
  };
}


