{
  description = ''
    String interpolation with printf syntax
  '';
  inputs.src-stringinterpolation.url = "https://github.com/bluenote10/nim-stringinterpolation";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
