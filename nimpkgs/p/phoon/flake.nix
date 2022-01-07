{
  description = ''
    A web framework inspired by ExpressJS 🐇⚡
  '';
  inputs.src-phoon.url = "https://github.com/ducdetronquito/phoon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
