{
  description = ''
    Gif Encoder
  '';
  inputs.src-gifenc.url = "https://github.com/ftsf/gifenc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
