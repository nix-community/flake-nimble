{
  description = ''OAuth library for nim'';
  inputs."oauth-develop".url = "path:./develop";
  inputs."oauth-master".url = "path:./master";
  inputs."oauth-v0_10".url = "path:./v0_10";
  inputs."oauth-v0_2".url = "path:./v0_2";
  inputs."oauth-v0_3".url = "path:./v0_3";
  inputs."oauth-v0_4".url = "path:./v0_4";
  inputs."oauth-v0_4_1".url = "path:./v0_4_1";
  inputs."oauth-v0_5".url = "path:./v0_5";
  inputs."oauth-v0_6".url = "path:./v0_6";
  inputs."oauth-v0_7".url = "path:./v0_7";
  inputs."oauth-v0_8".url = "path:./v0_8";
  inputs."oauth-v0_9".url = "path:./v0_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}