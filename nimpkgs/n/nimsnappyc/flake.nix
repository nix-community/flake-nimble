{
  description = ''
    Wrapper for the Snappy-C compression library
  '';
  inputs.src-nimsnappyc.url = "https://github.com/NimCompression/nimsnappyc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
