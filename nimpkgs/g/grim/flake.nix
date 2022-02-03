{
  description = ''Graphs in nim!'';
  inputs."grim-master".url = "path:./master";
  inputs."grim-v_0_1_0".url = "path:./v_0_1_0";
  inputs."grim-v_0_1_1".url = "path:./v_0_1_1";
  inputs."grim-v_0_2_0".url = "path:./v_0_2_0";
  inputs."grim-v0_3_0".url = "path:./v0_3_0";
  inputs."grim-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}