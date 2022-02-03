{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';
  
  inputs."eris_utils-0_1_0".url = "path:./0_1_0";
  inputs."eris_utils-0_1_1".url = "path:./0_1_1";
  inputs."eris_utils-0_1_2".url = "path:./0_1_2";
  inputs."eris_utils-0_1_3".url = "path:./0_1_3";
  inputs."eris_utils-0_2_0".url = "path:./0_2_0";
  inputs."eris_utils-0_3_0".url = "path:./0_3_0";
  inputs."eris_utils-0_4_0".url = "path:./0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}