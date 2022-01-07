{
  description = ''
    Plugin system for Nim
  '';
  inputs.src-plugins.url = "https://github.com/genotrance/plugins";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
