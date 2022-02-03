{
  description = ''The SHIORI DLL interface'';
  inputs."shioridll-master".url = "path:./master";
  inputs."shioridll-v1_0_0".url = "path:./v1_0_0";
  inputs."shioridll-v1_0_1".url = "path:./v1_0_1";
  inputs."shioridll-v2_0_0".url = "path:./v2_0_0";
  inputs."shioridll-v3_0_0".url = "path:./v3_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}