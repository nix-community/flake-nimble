{
  description = ''
    JSON / Object mapper
  '';
  inputs.src-jsonob.url = "https://github.com/cjxgm/jsonob";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
