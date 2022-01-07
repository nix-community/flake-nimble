{
  description = ''
    Configurable Nim code linter / formatter / style checker with heuristics
  '';
  inputs.src-nimfmt.url = "https://github.com/FedericoCeratto/nimfmt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
