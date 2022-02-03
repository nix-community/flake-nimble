{
  description = ''A Nim IDE.'';
  inputs."aporia-master".url = "path:./master";
  inputs."aporia-v0_1".url = "path:./v0_1";
  inputs."aporia-v0_1_1".url = "path:./v0_1_1";
  inputs."aporia-v0_1_1_0".url = "path:./v0_1_1_0";
  inputs."aporia-v0_4_0".url = "path:./v0_4_0";
  inputs."aporia-v0_4_1".url = "path:./v0_4_1";
  inputs."aporia-v0_4_2".url = "path:./v0_4_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}