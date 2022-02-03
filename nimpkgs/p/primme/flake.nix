{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';
  inputs."primme-master".url = "path:./master";
  inputs."primme-v0_0_0".url = "path:./v0_0_0";
  inputs."primme-v0_1_0".url = "path:./v0_1_0";
  inputs."primme-v0_1_1".url = "path:./v0_1_1";
  inputs."primme-v2_0_0".url = "path:./v2_0_0";
  inputs."primme-v2_1_0".url = "path:./v2_1_0";
  inputs."primme-v2_1_1".url = "path:./v2_1_1";
  inputs."primme-v3_0_0".url = "path:./v3_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}