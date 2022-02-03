{
  description = ''Bindings for Miniz lib.'';
  inputs."miniz-master".url = "path:./master";
  inputs."miniz-0_1_0".url = "path:./0_1_0";
  inputs."miniz-0_2_0".url = "path:./0_2_0";
  inputs."miniz-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}