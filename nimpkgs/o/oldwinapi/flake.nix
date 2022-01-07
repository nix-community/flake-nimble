{
  description = ''
    Old Win API library for Nim
  '';
  inputs.src-oldwinapi.url = "https://github.com/nim-lang/oldwinapi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
