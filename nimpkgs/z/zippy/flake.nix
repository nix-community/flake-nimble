{
  description = ''
    Pure Nim implementation of deflate, zlib, gzip and zip.
  '';
  inputs.src-zippy.url = "https://github.com/guzba/zippy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
