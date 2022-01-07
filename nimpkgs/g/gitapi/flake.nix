{
  description = ''
    Nim wrapper around the git version control software
  '';
  inputs.src-gitapi.url = "https://github.com/achesak/nim-gitapi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
