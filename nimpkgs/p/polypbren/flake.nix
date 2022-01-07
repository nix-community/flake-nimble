{
  description = ''
    Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation
  '';
  inputs.src-polypbren.url = "https://github.com/guibar64/polypbren";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
