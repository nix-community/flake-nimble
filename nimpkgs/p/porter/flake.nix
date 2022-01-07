{
  description = ''
    Simple extensible implementation of Porter stemmer algorithm
  '';
  inputs.src-porter.url = "https://github.com/iourinski/porter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
