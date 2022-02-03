{
  description = ''Command to remove acceptably empty directories.'';
  inputs."awesome_rmdir-develop".url = "path:./develop";
  inputs."awesome_rmdir-master".url = "path:./master";
  inputs."awesome_rmdir-v0_2_0".url = "path:./v0_2_0";
  inputs."awesome_rmdir-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}