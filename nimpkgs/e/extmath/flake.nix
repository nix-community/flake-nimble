{
  description = ''
    Nim math library
  '';
  inputs.src-extmath.url = "https://github.com/achesak/extmath.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
