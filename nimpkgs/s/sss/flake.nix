{
  description = ''
    Shamir secret sharing
  '';
  inputs.src-sss.url = "https://github.com/markspanbroek/sss.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
