{
  description = ''The Nim framework for VK API.'';
  inputs."shizuka-master".url = "path:./master";
  inputs."shizuka-nightly-0_3_0".url = "path:./nightly-0_3_0";
  inputs."shizuka-stable-1_0_0".url = "path:./stable-1_0_0";
  inputs."shizuka-v0_2_1".url = "path:./v0_2_1";
  inputs."shizuka-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}