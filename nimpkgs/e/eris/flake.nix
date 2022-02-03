{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';
  
  inputs."eris-0_2_0".url = "path:./0_2_0";
  inputs."eris-0_2_1".url = "path:./0_2_1";
  inputs."eris-0_3_0".url = "path:./0_3_0";
  inputs."eris-0_3_1".url = "path:./0_3_1";
  inputs."eris-0_4_0".url = "path:./0_4_0";
  inputs."eris-0_5_0".url = "path:./0_5_0";
  inputs."eris-0_6_0".url = "path:./0_6_0";
  inputs."eris-0_7_0".url = "path:./0_7_0";
  inputs."eris-0_7_1".url = "path:./0_7_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}