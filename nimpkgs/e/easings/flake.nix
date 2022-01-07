{
  description = ''
    Robert Penner Easing Functions for Nim
  '';
  inputs.src-easings.url = "https://github.com/juancarlospaco/nim-easings";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
