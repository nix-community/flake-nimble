{
  description = ''
    Module for working with rational numbers (fractions)
  '';
  inputs.src-nimrat.url = "https://github.com/apense/nimrat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
