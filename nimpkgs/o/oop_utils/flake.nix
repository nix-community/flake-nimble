{
  description = ''
    Macro for building OOP class hierarchies based on closure methods.
  '';
  inputs.src-oop_utils.url = "https://github.com/bluenote10/oop_utils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
