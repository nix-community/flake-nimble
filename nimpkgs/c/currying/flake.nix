{
  description = ''
    Currying library for Nim
  '';
  inputs.src-currying.url = "https://github.com/t8m8/currying";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
