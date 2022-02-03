{
  description = ''json de/serializer for tuples and more'';
  inputs."jser-master".url = "path:./master";
  inputs."jser-0_1_0".url = "path:./0_1_0";
  inputs."jser-0_1_1".url = "path:./0_1_1";
  inputs."jser-0_2_0".url = "path:./0_2_0";
  inputs."jser-0_2_1".url = "path:./0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}