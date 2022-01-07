{
  description = ''
    Algebraic data types and pattern matching
  '';
  inputs.src-patty.url = "https://github.com/andreaferretti/patty";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
