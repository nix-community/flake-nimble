{
  description = ''Unroll for-loops at compile-time.'';
  inputs."unrolled-master".url = "path:./master";
  inputs."unrolled-v0_1-alpha".url = "path:./v0_1-alpha";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}