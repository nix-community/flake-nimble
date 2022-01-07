{
  description = ''
    Winim minified code generator
  '';
  inputs.src-winimx.url = "https://github.com/khchen/winimx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
