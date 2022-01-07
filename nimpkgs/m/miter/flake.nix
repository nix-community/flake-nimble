{
  description = ''
    Ratio calculator on your terminal
  '';
  inputs.src-miter.url = "https://github.com/rafmst/miter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
