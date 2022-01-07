{
  description = ''
    This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore
  '';
  inputs.src-zfplugs.url = "https://github.com/zendbit/nim.zfplugs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
