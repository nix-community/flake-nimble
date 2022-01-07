{
  description = ''
    Redis connection pool
  '';
  inputs.src-redpool.url = "https://github.com/zedeus/redpool";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
