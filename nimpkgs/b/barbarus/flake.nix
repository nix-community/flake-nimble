{
  description = ''
    A simple extensible i18n engine.
  '';
  inputs.src-barbarus.url = "https://github.com/cjxgm/barbarus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
