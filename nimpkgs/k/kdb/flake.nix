{
  description = ''
    Nim structs to work with Kdb in type-safe manner and low-level Nim to Kdb bindings
  '';
  inputs.src-kdb.url = "https://github.com/inv2004/kdb_nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
