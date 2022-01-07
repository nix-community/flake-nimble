{
  description = ''
    Tiny object relational mapper (torm) for SQLite in Nim.
  '';
  inputs.src-torm.url = "https://github.com/enimatek-nl/torm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
