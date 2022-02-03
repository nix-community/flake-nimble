{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';
  inputs."unalix-master".url = "path:./master";
  inputs."unalix-v0_1".url = "path:./v0_1";
  inputs."unalix-v0_2".url = "path:./v0_2";
  inputs."unalix-v0_3".url = "path:./v0_3";
  inputs."unalix-v0_4".url = "path:./v0_4";
  inputs."unalix-v0_5".url = "path:./v0_5";
  inputs."unalix-v0_5_1".url = "path:./v0_5_1";
  inputs."unalix-v0_6".url = "path:./v0_6";
  inputs."unalix-v0_6_1".url = "path:./v0_6_1";
  inputs."unalix-v0_7".url = "path:./v0_7";
  inputs."unalix-v0_8".url = "path:./v0_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}