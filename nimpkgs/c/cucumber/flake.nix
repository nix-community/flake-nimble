{
  description = ''implements the cucumber BDD framework in the nim language'';
  inputs."cucumber-master".url = "path:./master";
  inputs."cucumber-v0_0_10".url = "path:./v0_0_10";
  inputs."cucumber-v0_0_11".url = "path:./v0_0_11";
  inputs."cucumber-v0_0_2".url = "path:./v0_0_2";
  inputs."cucumber-v0_0_3".url = "path:./v0_0_3";
  inputs."cucumber-v0_0_4".url = "path:./v0_0_4";
  inputs."cucumber-v0_0_6".url = "path:./v0_0_6";
  inputs."cucumber-v0_0_7".url = "path:./v0_0_7";
  inputs."cucumber-v0_0_8".url = "path:./v0_0_8";
  inputs."cucumber-v0_0_9".url = "path:./v0_0_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}