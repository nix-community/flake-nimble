{
  description = ''
    Nim bindings for libshout
  '';
  inputs.src-nshout.url = "https://github.com/Senketsu/nshout";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
