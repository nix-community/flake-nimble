{
  description = ''Arbitrary-precision integers'';
  inputs."bigints-master".url = "path:./master";
  inputs."bigints-0_4_4".url = "path:./0_4_4";
  inputs."bigints-0_5_0".url = "path:./0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}