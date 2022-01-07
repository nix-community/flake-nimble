{
  description = ''
    Utils to work with javascript
  '';
  inputs.src-jsutils.url = "https://github.com/kidandcat/jsutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
