{
  description = ''A nice and icy ZSH prompt in Nim'';
  inputs."nicy-master".url = "path:./master";
  inputs."nicy-v1_0_0".url = "path:./v1_0_0";
  inputs."nicy-v2_0_0".url = "path:./v2_0_0";
  inputs."nicy-v2_1_0".url = "path:./v2_1_0";
  inputs."nicy-v2_2_0".url = "path:./v2_2_0";
  inputs."nicy-v2_3_0".url = "path:./v2_3_0";
  inputs."nicy-v2_4_0".url = "path:./v2_4_0";
  inputs."nicy-v2_4_1".url = "path:./v2_4_1";
  inputs."nicy-v2_4_2".url = "path:./v2_4_2";
  inputs."nicy-v2_5_0".url = "path:./v2_5_0";
  inputs."nicy-v2_5_1".url = "path:./v2_5_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}