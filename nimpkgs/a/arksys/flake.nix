{
  description = ''
    An entity component system package
  '';
  inputs.src-arksys.url = "https://github.com/wolfadex/arksys";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
