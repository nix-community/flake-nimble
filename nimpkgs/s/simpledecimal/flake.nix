{
  description = ''
    A simple decimal library
  '';
  inputs.src-simpledecimal.url = "https://github.com/pigmej/nim-simple-decimal";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
