{
  description = ''
    Metaprogramming tools for Nim
  '';
  inputs.src-metatools.url = "https://github.com/jxy/metatools";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
