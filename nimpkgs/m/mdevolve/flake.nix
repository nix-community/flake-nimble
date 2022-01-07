{
  description = ''
    Integrator framework for Molecular Dynamic evolutions
  '';
  inputs.src-mdevolve.url = "https://github.com/jxy/MDevolve";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
