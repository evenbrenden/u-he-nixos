{ stdenv, lib, fetchurl, freetype, gcc, unzip, ... }:

stdenv.mkDerivation rec {
  pname = "TAL-U-NO-LX";
  version = "1.0.0";

  src = fetchurl {
    url = "https://tal-software.com/downloads/plugins/TAL-U-NO-LX-V2_64_linux.zip";
    sha256 = "1kz38qlw54c7awns5zgnyn78dcv9gpqiwn2lkz2004na1h0204w0";
  };

  nativeBuildInputs = [ unzip ]; # for unzipping the source file

    buildInputs = [ freetype stdenv.cc.cc.lib ];


  installPhase = ''
    mkdir -p $out/lib/tal-u-no-lx
    cp -r * $out/lib/tal-u-no-lx
    patchelf --set-rpath "${lib.makeLibraryPath [ freetype stdenv.cc.cc.lib ]}" $out/lib/tal-u-no-lx/libTAL-U-NO-LX-V2.so

  '';

  meta = with lib; {
    description = "TAL-U-NO-LX VST Plugin";
    homepage = "https://tal-software.com/products/tal-u-no-lx";
    license = licenses.unfree; # this software is not free
    platforms = platforms.linux;
  };
}


