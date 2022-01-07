{
  description = ''
    Godot-Nim Utility - Godot gamedev with Nim
  '';
  inputs.src-gnu.url = "https://github.com/tonogram/gnu";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
