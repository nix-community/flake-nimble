{
  description = ''RethinkDB driver for Nim'';
  inputs."rethinkdb-master".url = "path:./master";
  inputs."rethinkdb-0_1_0".url = "path:./0_1_0";
  inputs."rethinkdb-0_1_1".url = "path:./0_1_1";
  inputs."rethinkdb-0_1_2".url = "path:./0_1_2";
  inputs."rethinkdb-0_1_3".url = "path:./0_1_3";
  inputs."rethinkdb-0_1_4".url = "path:./0_1_4";
  inputs."rethinkdb-0_1_5".url = "path:./0_1_5";
  inputs."rethinkdb-0_1_6".url = "path:./0_1_6";
  inputs."rethinkdb-0_2_0".url = "path:./0_2_0";
  inputs."rethinkdb-0_2_3".url = "path:./0_2_3";
  inputs."rethinkdb-0_2_3_1".url = "path:./0_2_3_1";
  inputs."rethinkdb-0_2_3_2".url = "path:./0_2_3_2";
  inputs."rethinkdb-0_2_3_3".url = "path:./0_2_3_3";
  inputs."rethinkdb-0_2_3_4".url = "path:./0_2_3_4";
  inputs."rethinkdb-0_2_3_5".url = "path:./0_2_3_5";
  inputs."rethinkdb-0_2_4".url = "path:./0_2_4";
  inputs."rethinkdb-0_2_5".url = "path:./0_2_5";
  inputs."rethinkdb-0_2_6".url = "path:./0_2_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}