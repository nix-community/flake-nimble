{
  description = ''
    Compile time localization for applications
  '';
  inputs.src-localize.url = "https://github.com/levovix0/localize";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
