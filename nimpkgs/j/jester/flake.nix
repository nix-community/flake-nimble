{
  description = ''A sinatra-like web framework for Nim.'';
  inputs."jester-master".url = "path:./master";
  inputs."jester-v0_1_0".url = "path:./v0_1_0";
  inputs."jester-v0_1_1".url = "path:./v0_1_1";
  inputs."jester-v0_2_0".url = "path:./v0_2_0";
  inputs."jester-v0_2_1".url = "path:./v0_2_1";
  inputs."jester-v0_3_0".url = "path:./v0_3_0";
  inputs."jester-v0_4_0".url = "path:./v0_4_0";
  inputs."jester-v0_4_1".url = "path:./v0_4_1";
  inputs."jester-v0_4_2".url = "path:./v0_4_2";
  inputs."jester-v0_4_3".url = "path:./v0_4_3";
  inputs."jester-v0_5_0".url = "path:./v0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}