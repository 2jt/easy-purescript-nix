# This file has been generated by node2nix 1.9.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "isexe-2.0.0" = {
      name = "isexe";
      packageName = "isexe";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    };
    "purescript-language-server-0.16.5" = {
      name = "purescript-language-server";
      packageName = "purescript-language-server";
      version = "0.16.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/purescript-language-server/-/purescript-language-server-0.16.5.tgz";
        sha512 = "M9Ktn2/hVjWMN9vK+q8i8i4r0gnnhT0u+GpKPsrdjPjJFcTqKaH49TQNwf07eD8Sd+xlcuU3PSu5CRgXwH3gag==";
      };
    };
    "shell-quote-1.7.3" = {
      name = "shell-quote";
      packageName = "shell-quote";
      version = "1.7.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/shell-quote/-/shell-quote-1.7.3.tgz";
        sha512 = "Vpfqwm4EnqGdlsBFNmHhxhElJYrdfcxPThu+ryKS5J8L/fhAwLazFZtq+S+TWZ9ANj2piSQLGj6NQg+lKPmxrw==";
      };
    };
    "uuid-3.4.0" = {
      name = "uuid";
      packageName = "uuid";
      version = "3.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/uuid/-/uuid-3.4.0.tgz";
        sha512 = "HjSDRw6gZE5JMggctHBcjVak08+KEVhSIiDzFnT9S9aegmp85S/bReBVTb4QTFaRNptJ9kuYaNhnbNEOkbKb/A==";
      };
    };
    "vscode-jsonrpc-8.0.0-next.6" = {
      name = "vscode-jsonrpc";
      packageName = "vscode-jsonrpc";
      version = "8.0.0-next.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-8.0.0-next.6.tgz";
        sha512 = "6Ld3RYjygn5Ih7CkAtcAwiDQC+rakj2O+PnASfNyYv3sLmm44eJpEKzuPUN30Iy2UB09AZg8T6LBKWTJTEJDVw==";
      };
    };
    "vscode-languageserver-8.0.0-next.8" = {
      name = "vscode-languageserver";
      packageName = "vscode-languageserver";
      version = "8.0.0-next.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver/-/vscode-languageserver-8.0.0-next.8.tgz";
        sha512 = "Gq0uqKbOgw7YNwPxMoNCeh7mHKMhG5j6EuoSh+w5pnKd7Eu9a74cagqf9aZDVFWW6GRpqR/Z+1o6EXqDK+g2Tg==";
      };
    };
    "vscode-languageserver-protocol-3.17.0-next.14" = {
      name = "vscode-languageserver-protocol";
      packageName = "vscode-languageserver-protocol";
      version = "3.17.0-next.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.0-next.14.tgz";
        sha512 = "iangobY8dL6sFZkOx4OhRPJM9gN0I1caUsOVR+MnPozsqQUtwMXmbIcfaIf0Akp0pd3KhJDPf/tdwRX68QGeeA==";
      };
    };
    "vscode-languageserver-textdocument-1.0.4" = {
      name = "vscode-languageserver-textdocument";
      packageName = "vscode-languageserver-textdocument";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.4.tgz";
        sha512 = "/xhqXP/2A2RSs+J8JNXpiiNVvvNM0oTosNVmQnunlKvq9o4mupHOBAnnzH0lwIPKazXKvAKsVp1kr+H/K4lgoQ==";
      };
    };
    "vscode-languageserver-types-3.17.0-next.7" = {
      name = "vscode-languageserver-types";
      packageName = "vscode-languageserver-types";
      version = "3.17.0-next.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.17.0-next.7.tgz";
        sha512 = "KH4zdG1qBXxoso61ChgpeoZYyHGJo8bV7Jv4I+fwQ1Ryy59JAxoZ9GAbhR5TeeafHctLcg6RFvY3m8Jqfu17cg==";
      };
    };
    "vscode-uri-2.1.2" = {
      name = "vscode-uri";
      packageName = "vscode-uri";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-uri/-/vscode-uri-2.1.2.tgz";
        sha512 = "8TEXQxlldWAuIODdukIb+TR5s+9Ds40eSJrw+1iDDA9IFORPjMELarNQE3myz5XIkWWpdprmJjm1/SxMlWOC8A==";
      };
    };
    "which-2.0.2" = {
      name = "which";
      packageName = "which";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
        sha512 = "BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      };
    };
  };
  args = {
    name = "purescript-language-server";
    packageName = "purescript-language-server";
    version = "0.16.5";
    src = ./.;
    dependencies = [
      sources."isexe-2.0.0"
      sources."purescript-language-server-0.16.5"
      sources."shell-quote-1.7.3"
      sources."uuid-3.4.0"
      sources."vscode-jsonrpc-8.0.0-next.6"
      sources."vscode-languageserver-8.0.0-next.8"
      sources."vscode-languageserver-protocol-3.17.0-next.14"
      sources."vscode-languageserver-textdocument-1.0.4"
      sources."vscode-languageserver-types-3.17.0-next.7"
      sources."vscode-uri-2.1.2"
      sources."which-2.0.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}