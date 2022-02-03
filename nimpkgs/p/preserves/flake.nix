{
  description = ''Preserves data model and serialization format'';
  
  inputs."preserves-v0_1_0".url = "path:./v0_1_0";
  inputs."preserves-v0_2_0".url = "path:./v0_2_0";
  inputs."preserves-v1_0_0".url = "path:./v1_0_0";
  inputs."preserves-v1_1_0".url = "path:./v1_1_0";
  inputs."preserves-v2_0_0".url = "path:./v2_0_0";
  inputs."preserves-v3_0_0".url = "path:./v3_0_0";
  inputs."preserves-v3_0_1".url = "path:./v3_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}