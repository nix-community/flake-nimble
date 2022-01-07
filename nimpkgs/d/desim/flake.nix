{
  description = ''
    A lightweight discrete event simulator
  '';
  inputs.src-desim.url = "http://github.com/jayvanderwall/desim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
