{
  description = ''
    An advanced parsing library for mathematical expressions and equations
  '';
  inputs.src-nimkalc.url = "https://github.com/nocturn9x/nimkalc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
