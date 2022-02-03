{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';
  inputs."symbolicnim-master".url = "path:./master";
  inputs."symbolicnim-v0_1".url = "path:./v0_1";
  inputs."symbolicnim-v0_1_1".url = "path:./v0_1_1";
  inputs."symbolicnim-v0_2_0".url = "path:./v0_2_0";
  inputs."symbolicnim-v0_2_1".url = "path:./v0_2_1";
  inputs."symbolicnim-v0_2_2".url = "path:./v0_2_2";
  inputs."symbolicnim-v0_2_3".url = "path:./v0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}