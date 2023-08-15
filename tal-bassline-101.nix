{ stdenv, lib, fetchurl, freetype, gcc, unzip, ... }:

stdenv.mkDerivation rec {
  pname = "TAL-BassLine-101";
  version = "1.0.0";

  src = fetchurl {
    url = "https://tal-software.com/downloads/plugins/TAL-BassLine-101_64_linux.zip";
    sha256 = "0h3ccqv9j14scx6mi4xshgg25d7gxxwn4v4glgsi47rx1svaqk21";
  };

  nativeBuildInputs = [ unzip ]; # for unzipping the source file

    buildInputs = [ freetype stdenv.cc.cc.lib ];


  installPhase = ''
    mkdir -p $out/lib/tal-bassline-101
    cp -r * $out/lib/tal-bassline-101
    patchelf --set-rpath "${lib.makeLibraryPath [ freetype stdenv.cc.cc.lib ]}" $out/lib/tal-bassline-101/libTAL-BassLine-101.so

  '';

  meta = with lib; {
    description = "TAL-BassLine-101 VST Plugin";
    homepage = "https://tal-software.com/products/tal-bassline-101";
    license = licenses.unfree; # this software is not free
    platforms = platforms.linux;
  };
}


