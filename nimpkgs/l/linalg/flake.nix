{
  description = ''
    Linear algebra for Nim
  '';
  inputs.src-linalg.url = "https://github.com/andreaferretti/linear-algebra";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
