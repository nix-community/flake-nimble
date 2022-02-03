{
  description = ''The elvis package implements a 'truthy', 'ternary' and a 'coalesce' operator to Nim as syntactic sugar for working with conditional expressions'';
  inputs."elvis-master".url = "path:./master";
  inputs."elvis-v0_3_0".url = "path:./v0_3_0";
  inputs."elvis-v0_4_0".url = "path:./v0_4_0";
  inputs."elvis-v0_5_0".url = "path:./v0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}