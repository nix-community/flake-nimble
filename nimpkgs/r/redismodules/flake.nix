{
  description = ''
    A new awesome nimble package
  '';
  inputs.src-redismodules.url = "https://github.com/luisacosta828/redismodules";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
