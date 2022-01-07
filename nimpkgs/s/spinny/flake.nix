{
  description = ''
    Spinny is a tiny terminal spinner package for the Nim Programming Language.
  '';
  inputs.src-spinny.url = "https://github.com/Yardanico/spinny";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
