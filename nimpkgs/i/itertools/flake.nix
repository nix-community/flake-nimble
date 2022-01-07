{
  description = ''
    Itertools for Nim
  '';
  inputs.src-itertools.url = "https://github.com/narimiran/itertools";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
