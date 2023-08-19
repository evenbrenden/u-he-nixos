{ stdenv, lib, fetchurl, freetype, gcc, unzip, ... }:

stdenv.mkDerivation rec {
  pname = "TAL-J-8";
  version = "1.0.0";

  src = fetchurl {
    url = "https://tal-software.com/downloads/plugins/TAL-J-8_64_linux.zip";
    sha256 = "0ab4rdmarqanvscm2qn9vykxp7nnggbkbn7s67580m6xdmjr9fwz";
  };

  nativeBuildInputs = [ unzip ]; # for unzipping the source file

    buildInputs = [ freetype stdenv.cc.cc.lib ];


  installPhase = ''
    mkdir -p $out/lib/tal-j-8
    cp -r * $out/lib/tal-j-8
    patchelf --set-rpath "${lib.makeLibraryPath [ freetype stdenv.cc.cc.lib ]}" $out/lib/tal-j-8/libTAL-J-8.so
  '';

  meta = with lib; {
    description = "TAL-J-8 VST Plugin";
    homepage = "https://tal-software.com/products/tal-j-8";
    license = licenses.unfree; # this software is not free
    platforms = platforms.linux;
  };
}


