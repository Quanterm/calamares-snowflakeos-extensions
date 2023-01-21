{ pkgs, lib }:

pkgs.stdenv.mkDerivation rec {
  pname = "calamares-snowflakeos-extensions";
  version = "0.3.10";

  src = [ ./. ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/{lib,share}/calamares
    cp -r modules $out/lib/calamares/
    cp -r config/* $out/share/calamares/
    cp -r branding $out/share/calamares/
    runHook postInstall
  '';
}
