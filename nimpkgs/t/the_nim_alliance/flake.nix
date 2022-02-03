{
  description = ''A Nim wrapper for TheBlueAlliance'';
  inputs."the_nim_alliance-master".url = "path:./master";
  inputs."the_nim_alliance-v0_1_0".url = "path:./v0_1_0";
  inputs."the_nim_alliance-v0_1_1".url = "path:./v0_1_1";
  inputs."the_nim_alliance-v0_1_2".url = "path:./v0_1_2";
  inputs."the_nim_alliance-v0_1_3".url = "path:./v0_1_3";
  inputs."the_nim_alliance-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}