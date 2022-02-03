{
  description = ''Useful Variant Type and Powerful Pattern Matching for Nim'';
  inputs."matsuri-master".url = "path:./master";
  inputs."matsuri-v0_1_0".url = "path:./v0_1_0";
  inputs."matsuri-v0_2_0".url = "path:./v0_2_0";
  inputs."matsuri-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}