{
  description = ''
    better cookie handling
  '';
  inputs.src-biscuits.url = "https://github.com/achesak/nim-biscuits";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
