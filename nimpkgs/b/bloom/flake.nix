{
  description = ''
    Efficient Bloom filter implementation in Nim using MurmurHash3.
  '';
  inputs.src-bloom.url = "https://github.com/boydgreenfield/nimrod-bloom";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
