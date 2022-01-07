{
  description = ''
    Genetic Algorithm Library for Nim.
  '';
  inputs.src-nimga.url = "https://github.com/toshikiohnogi/nimga";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
