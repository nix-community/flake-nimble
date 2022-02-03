{
  description = ''Yet another SQLite wrapper for Nim.'';
  inputs."easy_sqlite3-develop".url = "path:./develop";
  inputs."easy_sqlite3-v0_1_0".url = "path:./v0_1_0";
  inputs."easy_sqlite3-v0_1_1".url = "path:./v0_1_1";
  inputs."easy_sqlite3-v0_1_2".url = "path:./v0_1_2";
  inputs."easy_sqlite3-v0_1_3".url = "path:./v0_1_3";
  inputs."easy_sqlite3-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}