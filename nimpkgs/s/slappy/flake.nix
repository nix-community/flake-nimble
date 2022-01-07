{
  description = ''
    A 3d sound API for nim.
  '';
  inputs.src-slappy.url = "https://github.com/treeform/slappy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
