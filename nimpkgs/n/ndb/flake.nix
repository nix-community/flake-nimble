{
  description = ''A db_sqlite fork with a proper typing'';
  inputs."ndb-master".url = "path:./master";
  inputs."ndb-v0_19_0".url = "path:./v0_19_0";
  inputs."ndb-v0_19_1".url = "path:./v0_19_1";
  inputs."ndb-v0_19_2".url = "path:./v0_19_2";
  inputs."ndb-v0_19_3".url = "path:./v0_19_3";
  inputs."ndb-v0_19_4".url = "path:./v0_19_4";
  inputs."ndb-v0_19_5".url = "path:./v0_19_5";
  inputs."ndb-v0_19_6".url = "path:./v0_19_6";
  inputs."ndb-v0_19_7".url = "path:./v0_19_7";
  inputs."ndb-v0_19_8".url = "path:./v0_19_8";
  inputs."ndb-v0_19_9".url = "path:./v0_19_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}