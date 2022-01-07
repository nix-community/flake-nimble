{
  description = ''
    A poker hand evaluator
  '';
  inputs.src-pokereval.url = "https://github.com/jasonlu7/pokereval";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
