{
  description = ''
    Sparkline library
  '';
  inputs.src-sparkline.url = "https://github.com/aquilax/sparkline-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
