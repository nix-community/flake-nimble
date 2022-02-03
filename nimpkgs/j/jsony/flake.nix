{
  description = ''A loose, direct to object json parser with hooks.'';
  inputs."jsony-master".url = "path:./master";
  inputs."jsony-0_0_1".url = "path:./0_0_1";
  inputs."jsony-0_0_2".url = "path:./0_0_2";
  inputs."jsony-0_0_4".url = "path:./0_0_4";
  inputs."jsony-0_0_5".url = "path:./0_0_5";
  inputs."jsony-1_0_0".url = "path:./1_0_0";
  inputs."jsony-1_0_1".url = "path:./1_0_1";
  inputs."jsony-1_0_3".url = "path:./1_0_3";
  inputs."jsony-1_0_4".url = "path:./1_0_4";
  inputs."jsony-1_0_5".url = "path:./1_0_5";
  inputs."jsony-1_1_0".url = "path:./1_1_0";
  inputs."jsony-1_1_1".url = "path:./1_1_1";
  inputs."jsony-1_1_2".url = "path:./1_1_2";
  inputs."jsony-1_1_3".url = "path:./1_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}