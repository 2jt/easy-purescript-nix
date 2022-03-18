{ pkgs ? import <nixpkgs> { } }:

let
  version = "v0.15.0-alpha-02";

  src =
    if pkgs.stdenv.isDarwin
    then
      pkgs.fetchurl
        {
          url = "https://github.com/purescript/purescript/releases/download/${version}/macos.tar.gz";
          sha256 = "sha256-pmnW3wo9KJ6f5b0iGtqaAhiMYOAZ2sYh6uDYx8zN0rE=";
        }
    else
      pkgs.fetchurl {
        url = "https://github.com/purescript/purescript/releases/download/${version}/linux64.tar.gz";
        sha256 = "sha256-g2cmpX3bkCFUfcl2eRPGFOvyLW1l0vgbZGYOMT/o4Ys=";
      };

in
import ./mkPursDerivation.nix {
  inherit pkgs version src;
}
