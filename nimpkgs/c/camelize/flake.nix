{
  description = ''
    Convert json node to camelcase
  '';
  inputs.src-camelize.url = "https://github.com/kixixixixi/camelize";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
