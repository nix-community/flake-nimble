{
  description = ''Porting some Python / Kotlin features to Nim'';
  inputs."pykot-master".url = "path:./master";
  inputs."pykot-v0_1_0".url = "path:./v0_1_0";
  inputs."pykot-v0_1_1".url = "path:./v0_1_1";
  inputs."pykot-v0_1_2".url = "path:./v0_1_2";
  inputs."pykot-v0_1_3".url = "path:./v0_1_3";
  inputs."pykot-v0_2_0".url = "path:./v0_2_0";
  inputs."pykot-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}