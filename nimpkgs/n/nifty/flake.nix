{
  description = ''A decentralized (pseudo) package manager and script runner.'';
  inputs."nifty-master".url = "path:./master";
  inputs."nifty-v0_1_0".url = "path:./v0_1_0";
  inputs."nifty-v1_0_0".url = "path:./v1_0_0";
  inputs."nifty-v1_0_1".url = "path:./v1_0_1";
  inputs."nifty-v1_1_0".url = "path:./v1_1_0";
  inputs."nifty-v1_2_0".url = "path:./v1_2_0";
  inputs."nifty-v1_2_1".url = "path:./v1_2_1";
  inputs."nifty-v1_2_2".url = "path:./v1_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}