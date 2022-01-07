{
  description = ''
    A Grid (R) like package in Nim
  '';
  inputs.src-ginger.url = "https://github.com/Vindaar/ginger";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
