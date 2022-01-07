{
  description = ''
    nimaterial is a CSS output library based on material design.
  '';
  inputs.src-nimaterial.url = "https://github.com/momeemt/nimaterial";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
