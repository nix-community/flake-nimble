{
  description = ''
    Pure Nim asyncronous driver for Redis DB
  '';
  inputs.src-asyncredis.url = "https://github.com/Q-Master/redis.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
