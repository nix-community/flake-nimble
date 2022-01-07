{
  description = ''
    A Nim implementation of the Stalin Sort algorithm.
  '';
  inputs.src-stalinsort.url = "https://github.com/tonogram/stalinsort";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
