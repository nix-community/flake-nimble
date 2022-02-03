{
  description = ''Command-line args parser based on Usage message'';
  inputs."docopt-master".url = "path:./master";
  inputs."docopt-v0_6_0".url = "path:./v0_6_0";
  inputs."docopt-v0_6_1".url = "path:./v0_6_1";
  inputs."docopt-v0_6_2".url = "path:./v0_6_2";
  inputs."docopt-v0_6_3".url = "path:./v0_6_3";
  inputs."docopt-v0_6_4".url = "path:./v0_6_4";
  inputs."docopt-v0_6_5".url = "path:./v0_6_5";
  inputs."docopt-v0_6_6".url = "path:./v0_6_6";
  inputs."docopt-v0_6_7".url = "path:./v0_6_7";
  inputs."docopt-v0_6_8".url = "path:./v0_6_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}