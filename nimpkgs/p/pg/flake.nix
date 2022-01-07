{
  description = ''
    Very simple PostgreSQL async api for nim.
  '';
  inputs.src-pg.url = "https://github.com/treeform/pg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
