{
  description = ''
    Our very personal collection of utilities
  '';
  inputs.src-fragments.url = "https://github.com/fragcolor-xyz/fragments";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
