{
  description = ''
    Redis client for Nim
  '';
  inputs.src-redisclient.url = "https://github.com/xmonader/nim-redisclient";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
