{
  description = ''
    RethinkDB driver for Nim
  '';
  inputs.src-rethinkdb.url = "https://github.com/OpenSystemsLab/rethinkdb.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
