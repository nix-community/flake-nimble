{
  description = ''
    zlib wrapper for Nim
  '';
  inputs.src-zlib.url = "https://github.com/status-im/nim-zlib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
