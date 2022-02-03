{
  description = ''Tiger hash function'';
  inputs."tiger-master".url = "path:./master";
  inputs."tiger-v0_1".url = "path:./v0_1";
  inputs."tiger-v0_2".url = "path:./v0_2";
  inputs."tiger-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}