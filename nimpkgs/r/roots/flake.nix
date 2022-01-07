{
  description = ''
    Root finding functions for Nim
  '';
  inputs.src-roots.url = "https://github.com/BarrOff/roots";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
