{
  description = ''
    A simple bitarray library for nim.
  '';
  inputs.src-nimbitarray.url = "https://github.com/YesDrX/bitarray";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
