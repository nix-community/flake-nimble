{
  description = ''
    A nim wrapper for Wren, an embedded scripting language
  '';
  inputs.src-wren.url = "https://github.com/geotre/wren";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
