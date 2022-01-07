{
  description = ''
    RESP(REdis Serialization Protocol) Serialization for Nim
  '';
  inputs.src-redisparser.url = "https://github.com/xmonader/nim-redisparser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
