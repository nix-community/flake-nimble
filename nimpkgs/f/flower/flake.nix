{
  description = ''
    A pure Nim bloom filter.
  '';
  inputs.src-flower.url = "https://github.com/dizzyliam/flower";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
