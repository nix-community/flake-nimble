{
  description = ''
    Terminal dashboards.
  '';
  inputs.src-dashing.url = "https://github.com/FedericoCeratto/nim-dashing";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
