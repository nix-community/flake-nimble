{
  description = ''
    Signal and Slot library for Nim.
  '';
  inputs.src-sling.url = "https://github.com/Druage/sling";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
