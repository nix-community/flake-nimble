{
  description = ''
    official redis client for Nim
  '';
  inputs.src-redis.url = "https://github.com/nim-lang/redis";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
