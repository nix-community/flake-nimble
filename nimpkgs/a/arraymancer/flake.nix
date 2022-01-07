{
  description = ''
    A tensor (multidimensional array) library for Nim
  '';
  inputs.src-arraymancer.url = "https://github.com/mratsim/Arraymancer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
