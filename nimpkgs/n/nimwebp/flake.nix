{
  description = ''
    Webp encoder and decoder bindings for Nim
  '';
  inputs.src-nimwebp.url = "https://github.com/tormund/nimwebp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
