{
  description = ''
    Financial Library for Nim
  '';
  inputs.src-nimFinLib.url = "https://github.com/qqtop/NimFinLib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
