{
  description = ''
    The Nim asynchronous web framework.
  '';
  inputs.src-akane.url = "https://github.com/ethosa/akane";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
