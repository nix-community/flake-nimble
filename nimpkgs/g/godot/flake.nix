{
  description = ''
    Nim bindings for Godot Engine
  '';
  inputs.src-godot.url = "https://github.com/pragmagic/godot-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
