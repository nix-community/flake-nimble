{
  description = ''
    untitled shell history application
  '';
  inputs.src-usha.url = "https://github.com/subsetpark/untitled-shell-history-application";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
