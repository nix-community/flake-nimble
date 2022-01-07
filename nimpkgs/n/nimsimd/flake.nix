{
  description = ''
    Pleasant Nim bindings for SIMD instruction sets
  '';
  inputs.src-nimsimd.url = "https://github.com/guzba/nimsimd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
