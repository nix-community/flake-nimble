{
  description = ''
    Decision tree and Random forest CART implementation in Nim
  '';
  inputs.src-decisiontree.url = "https://github.com/Michedev/DecisionTreeNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
