{
  description = ''
    BLAS for Nim
  '';
  inputs.src-nimblas.url = "https://github.com/andreaferretti/nimblas";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
