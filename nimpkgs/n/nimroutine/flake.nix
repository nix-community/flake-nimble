{
  description = ''A go routine like nim implementation'';
  inputs."nimroutine-develop".url = "path:./develop";
  inputs."nimroutine-master".url = "path:./master";
  inputs."nimroutine-v0_1_0".url = "path:./v0_1_0";
  inputs."nimroutine-v0_1_1".url = "path:./v0_1_1";
  inputs."nimroutine-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}