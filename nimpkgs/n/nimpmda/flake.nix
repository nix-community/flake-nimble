{
  description = ''
    PCP PMDA module bindings
  '';
  inputs.src-nimpmda.url = "https://github.com/jasonk000/nimpmda";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
