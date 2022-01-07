{
  description = ''
    HPACK (Header Compression for HTTP/2)
  '';
  inputs.src-hpack.url = "https://github.com/nitely/nim-hpack";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
