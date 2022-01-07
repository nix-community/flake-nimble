{
  description = ''
    Find and Edit Utility
  '';
  inputs.src-fae.url = "https://github.com/h3rald/fae";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
