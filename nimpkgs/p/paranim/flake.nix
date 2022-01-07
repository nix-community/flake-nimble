{
  description = ''
    A game library
  '';
  inputs.src-paranim.url = "https://github.com/paranim/paranim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
