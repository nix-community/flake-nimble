{
  description = ''The Hypixel API, in Nim.'';
  inputs."hypixel-main".url = "path:./main";
  inputs."hypixel-v0_2_0".url = "path:./v0_2_0";
  inputs."hypixel-v0_2_1".url = "path:./v0_2_1";
  inputs."hypixel-v0_2_2".url = "path:./v0_2_2";
  inputs."hypixel-v0_2_3".url = "path:./v0_2_3";
  inputs."hypixel-v0_3_0".url = "path:./v0_3_0";
  inputs."hypixel-v0_3_1".url = "path:./v0_3_1";
  inputs."hypixel-v0_3_2".url = "path:./v0_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}