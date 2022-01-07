{
  description = ''
    Nim Game Library
  '';
  inputs.src-nimgl.url = "https://github.com/nimgl/nimgl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
