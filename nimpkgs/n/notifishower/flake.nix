{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';
  inputs."notifishower-master".url = "path:./master";
  inputs."notifishower-v0_3_0".url = "path:./v0_3_0";
  inputs."notifishower-v0_5_0".url = "path:./v0_5_0";
  inputs."notifishower-v0_6_0".url = "path:./v0_6_0";
  inputs."notifishower-v0_7_0".url = "path:./v0_7_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}