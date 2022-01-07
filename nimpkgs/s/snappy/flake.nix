{
  description = ''
    Nim implementation of Snappy compression algorithm
  '';
  inputs.src-snappy.url = "https://github.com/jangko/snappy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
