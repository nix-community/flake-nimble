{
  description = ''
    Nim implementation of the standard unix drand48 pseudo random number generator
  '';
  inputs.src-drand48.url = "https://github.com/JeffersonLab/drand48";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
