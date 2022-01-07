{
  description = ''
    Simple screenshot library & cli tool made in Nim
  '';
  inputs.src-nsu.url = "https://github.com/Senketsu/nsu";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
