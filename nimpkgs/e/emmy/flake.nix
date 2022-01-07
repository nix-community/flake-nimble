{
  description = ''
    Algebraic structures and related operations for Nim
  '';
  inputs.src-emmy.url = "git@github.com:andreaferretti/emmy.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
