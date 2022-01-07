{
  description = ''
    The parsesql module implements a high performance SQL file parser. It parses PostgreSQL syntax and the SQL ANSI standard.
  '';
  inputs.src-parsesql.url = "https://github.com/bung87/parsesql";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
