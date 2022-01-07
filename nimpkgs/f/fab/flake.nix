{
  description = ''
    Print fabulously in your terminal
  '';
  inputs.src-fab.url = "https://github.com/icyphox/fab";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
