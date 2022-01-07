{
  description = ''
    Language Server Protocol implementation for Nim
  '';
  inputs.src-nimlsp.url = "https://github.com/PMunch/nimlsp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
