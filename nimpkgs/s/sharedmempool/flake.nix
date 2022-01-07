{
  description = ''
    threadsafe memory pool 
  '';
  inputs.src-sharedmempool.url = "https://github.com/mikra01/sharedmempool";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
