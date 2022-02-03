{
  description = ''Lock-free queue implementations for Nim.'';
  
  inputs."lockfreequeues-v0_1_0".url = "path:./v0_1_0";
  inputs."lockfreequeues-v1_0_0".url = "path:./v1_0_0";
  inputs."lockfreequeues-v2_0_0".url = "path:./v2_0_0";
  inputs."lockfreequeues-v2_0_1".url = "path:./v2_0_1";
  inputs."lockfreequeues-v2_0_2".url = "path:./v2_0_2";
  inputs."lockfreequeues-v2_0_3".url = "path:./v2_0_3";
  inputs."lockfreequeues-v2_0_4".url = "path:./v2_0_4";
  inputs."lockfreequeues-v2_0_5".url = "path:./v2_0_5";
  inputs."lockfreequeues-v2_0_6".url = "path:./v2_0_6";
  inputs."lockfreequeues-v2_1_0".url = "path:./v2_1_0";
  inputs."lockfreequeues-v3_0_0".url = "path:./v3_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}