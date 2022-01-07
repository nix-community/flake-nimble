{
  description = ''
    The Nim framework for VK API.
  '';
  inputs.src-shizuka.url = "https://github.com/ethosa/shizuka";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
