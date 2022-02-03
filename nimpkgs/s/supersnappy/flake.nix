{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
  inputs."supersnappy-master".url = "path:./master";
  inputs."supersnappy-1_0_0".url = "path:./1_0_0";
  inputs."supersnappy-1_1_0".url = "path:./1_1_0";
  inputs."supersnappy-1_1_1".url = "path:./1_1_1";
  inputs."supersnappy-1_1_2".url = "path:./1_1_2";
  inputs."supersnappy-1_1_3".url = "path:./1_1_3";
  inputs."supersnappy-1_1_4".url = "path:./1_1_4";
  inputs."supersnappy-1_1_5".url = "path:./1_1_5";
  inputs."supersnappy-2_0_0".url = "path:./2_0_0";
  inputs."supersnappy-2_1_0".url = "path:./2_1_0";
  inputs."supersnappy-2_1_1".url = "path:./2_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}