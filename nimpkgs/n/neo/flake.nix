{
  description = ''
    Linear algebra for Nim
  '';
  inputs.src-neo.url = "https://github.com/andreaferretti/neo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
