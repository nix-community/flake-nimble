{
  description = ''
    A collection of easing curves for animation purposes.
  '';
  inputs.src-skEasing.url = "https://github.com/Skrylar/skEasing";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
