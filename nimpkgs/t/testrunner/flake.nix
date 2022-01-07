{
  description = ''
    Test runner with file monitoring and desktop notification capabilities
  '';
  inputs.src-testrunner.url = "https://github.com/FedericoCeratto/nim-testrunner";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
