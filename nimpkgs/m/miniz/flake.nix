{
  description = ''
    Bindings for Miniz lib.
  '';
  inputs.src-miniz.url = "https://github.com/treeform/miniz";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
