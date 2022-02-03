{
  description = ''Very simple PostgreSQL async api for nim.'';
  inputs."pg-master".url = "path:./master";
  inputs."pg-0_1_0".url = "path:./0_1_0";
  inputs."pg-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}