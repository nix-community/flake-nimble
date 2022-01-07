{
  description = ''
    Special mathematical functions in Nim
  '';
  inputs.src-special_functions.url = "https://github.com/ayman-albaz/special-functions";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
