{
  description = ''
    Color Library
  '';
  inputs.src-Palette.url = "https://github.com/momeemt/Palette";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
