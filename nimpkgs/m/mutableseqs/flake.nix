{
  description = ''
    utilities for transforming sequences
  '';
  inputs.src-mutableseqs.url = "https://github.com/iourinski/mutableseqs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
