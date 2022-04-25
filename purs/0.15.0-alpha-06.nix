{ pkgs ? import <nixpkgs> { } }:

let
  version = "v0.15.0-alpha-06";

  src =
    if pkgs.stdenv.isDarwin
    then
      pkgs.fetchurl
        {
          url = "https://github.com/purescript/purescript/releases/download/${version}/macos.tar.gz";
        }
    else
      pkgs.fetchurl {
        url = "https://github.com/purescript/purescript/releases/download/${version}/linux64.tar.gz";
      };

  # Temporary fix for https://github.com/justinwoo/easy-purescript-nix/issues/188
  pkgs_ncurses = pkgs.extend (self: super: {
      ncurses5 = super.ncurses5.overrideAttrs (attr: {
        configureFlags = attr.configureFlags ++ ["--with-versioned-syms"];
      });
    });

in
import ./mkPursDerivation.nix {
  inherit version src;
  pkgs = pkgs_ncurses;
}
