{
  description = ''
    Implementation of various LZ77 algorithms
  '';
  inputs.src-lz77.url = "https://github.com/sealmove/LZ77";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
