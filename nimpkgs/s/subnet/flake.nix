{
  description = ''subnet prints subnet mask in human readable.'';
  inputs."subnet-master".url = "path:./master";
  inputs."subnet-v1_0_0".url = "path:./v1_0_0";
  inputs."subnet-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}