{
  description = ''
    Wrapper for the fswatch library.
  '';
  inputs.src-fswatch.url = "https://github.com/FedericoCeratto/nim-fswatch";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
