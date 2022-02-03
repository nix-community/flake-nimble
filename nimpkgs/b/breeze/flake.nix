{
  description = ''A dsl for writing macros in Nim'';
  inputs."breeze-master".url = "path:./master";
  inputs."breeze-v0_0_4".url = "path:./v0_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}