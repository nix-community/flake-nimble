{
  description = ''
    A simple MurmurHash3 wrapper for Nim
  '';
  inputs.src-murmur3.url = "https://github.com/boydgreenfield/nimrod-murmur";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
