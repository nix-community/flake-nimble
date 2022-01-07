{
  description = ''
    A teminal othello (reversi) in Nim.
  '';
  inputs.src-nimothello.url = "https://github.com/jiro4989/nimothello";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
